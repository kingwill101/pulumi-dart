import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_key_store_args.dart';
import 'custom_key_store_state.dart';
import 'custom_key_store_xks_proxy_authentication_credential.dart';

/// Resource for managing an AWS KMS (Key Management) Custom Key Store.
///
/// ## Example Usage
///
/// ### CloudHSM
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const test = new aws.kms.CustomKeyStore("test", {
///     cloudHsmClusterId: cloudHsmClusterId,
///     customKeyStoreName: "kms-custom-key-store-test",
///     keyStorePassword: "noplaintextpasswords1",
///     trustAnchorCertificate: std.file({
///         input: "anchor-certificate.crt",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// test = aws.kms.CustomKeyStore("test",
///     cloud_hsm_cluster_id=cloud_hsm_cluster_id,
///     custom_key_store_name="kms-custom-key-store-test",
///     key_store_password="noplaintextpasswords1",
///     trust_anchor_certificate=std.file(input="anchor-certificate.crt").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Kms.CustomKeyStore("test", new()
///     {
///         CloudHsmClusterId = cloudHsmClusterId,
///         CustomKeyStoreName = "kms-custom-key-store-test",
///         KeyStorePassword = "noplaintextpasswords1",
///         TrustAnchorCertificate = Std.File.Invoke(new()
///         {
///             Input = "anchor-certificate.crt",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "anchor-certificate.crt",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewCustomKeyStore(ctx, "test", &kms.CustomKeyStoreArgs{
/// 			CloudHsmClusterId:      pulumi.Any(cloudHsmClusterId),
/// 			CustomKeyStoreName:     pulumi.String("kms-custom-key-store-test"),
/// 			KeyStorePassword:       pulumi.String("noplaintextpasswords1"),
/// 			TrustAnchorCertificate: pulumi.String(invokeFile.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kms.CustomKeyStore;
/// import com.pulumi.aws.kms.CustomKeyStoreArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new CustomKeyStore("test", CustomKeyStoreArgs.builder()
///             .cloudHsmClusterId(cloudHsmClusterId)
///             .customKeyStoreName("kms-custom-key-store-test")
///             .keyStorePassword("noplaintextpasswords1")
///             .trustAnchorCertificate(StdFunctions.file(FileArgs.builder()
///                 .input("anchor-certificate.crt")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:kms:CustomKeyStore
///     properties:
///       cloudHsmClusterId: ${cloudHsmClusterId}
///       customKeyStoreName: kms-custom-key-store-test
///       keyStorePassword: noplaintextpasswords1
///       trustAnchorCertificate:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: anchor-certificate.crt
///           return: result
/// ```
///
///
/// ### External Key Store (VPC)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.CustomKeyStore("example", {
///     customKeyStoreName: "example-vpc-xks",
///     customKeyStoreType: "EXTERNAL_KEY_STORE",
///     xksProxyAuthenticationCredential: {
///         accessKeyId: ephemeralAccessKeyId,
///         rawSecretAccessKey: ephemeralSecretAccessKey,
///     },
///     xksProxyConnectivity: "VPC_ENDPOINT_SERVICE",
///     xksProxyUriEndpoint: "https://myproxy-private.xks.example.com",
///     xksProxyUriPath: "/kms/xks/v1",
///     xksProxyVpcEndpointServiceName: "com.amazonaws.vpce.us-east-1.vpce-svc-example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.CustomKeyStore("example",
///     custom_key_store_name="example-vpc-xks",
///     custom_key_store_type="EXTERNAL_KEY_STORE",
///     xks_proxy_authentication_credential={
///         "access_key_id": ephemeral_access_key_id,
///         "raw_secret_access_key": ephemeral_secret_access_key,
///     },
///     xks_proxy_connectivity="VPC_ENDPOINT_SERVICE",
///     xks_proxy_uri_endpoint="https://myproxy-private.xks.example.com",
///     xks_proxy_uri_path="/kms/xks/v1",
///     xks_proxy_vpc_endpoint_service_name="com.amazonaws.vpce.us-east-1.vpce-svc-example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kms.CustomKeyStore("example", new()
///     {
///         CustomKeyStoreName = "example-vpc-xks",
///         CustomKeyStoreType = "EXTERNAL_KEY_STORE",
///         XksProxyAuthenticationCredential = new Aws.Kms.Inputs.CustomKeyStoreXksProxyAuthenticationCredentialArgs
///         {
///             AccessKeyId = ephemeralAccessKeyId,
///             RawSecretAccessKey = ephemeralSecretAccessKey,
///         },
///         XksProxyConnectivity = "VPC_ENDPOINT_SERVICE",
///         XksProxyUriEndpoint = "https://myproxy-private.xks.example.com",
///         XksProxyUriPath = "/kms/xks/v1",
///         XksProxyVpcEndpointServiceName = "com.amazonaws.vpce.us-east-1.vpce-svc-example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewCustomKeyStore(ctx, "example", &kms.CustomKeyStoreArgs{
/// 			CustomKeyStoreName: pulumi.String("example-vpc-xks"),
/// 			CustomKeyStoreType: pulumi.String("EXTERNAL_KEY_STORE"),
/// 			XksProxyAuthenticationCredential: &kms.CustomKeyStoreXksProxyAuthenticationCredentialArgs{
/// 				AccessKeyId:        pulumi.Any(ephemeralAccessKeyId),
/// 				RawSecretAccessKey: pulumi.Any(ephemeralSecretAccessKey),
/// 			},
/// 			XksProxyConnectivity:           pulumi.String("VPC_ENDPOINT_SERVICE"),
/// 			XksProxyUriEndpoint:            pulumi.String("https://myproxy-private.xks.example.com"),
/// 			XksProxyUriPath:                pulumi.String("/kms/xks/v1"),
/// 			XksProxyVpcEndpointServiceName: pulumi.String("com.amazonaws.vpce.us-east-1.vpce-svc-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kms.CustomKeyStore;
/// import com.pulumi.aws.kms.CustomKeyStoreArgs;
/// import com.pulumi.aws.kms.inputs.CustomKeyStoreXksProxyAuthenticationCredentialArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new CustomKeyStore("example", CustomKeyStoreArgs.builder()
///             .customKeyStoreName("example-vpc-xks")
///             .customKeyStoreType("EXTERNAL_KEY_STORE")
///             .xksProxyAuthenticationCredential(CustomKeyStoreXksProxyAuthenticationCredentialArgs.builder()
///                 .accessKeyId(ephemeralAccessKeyId)
///                 .rawSecretAccessKey(ephemeralSecretAccessKey)
///                 .build())
///             .xksProxyConnectivity("VPC_ENDPOINT_SERVICE")
///             .xksProxyUriEndpoint("https://myproxy-private.xks.example.com")
///             .xksProxyUriPath("/kms/xks/v1")
///             .xksProxyVpcEndpointServiceName("com.amazonaws.vpce.us-east-1.vpce-svc-example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:CustomKeyStore
///     properties:
///       customKeyStoreName: example-vpc-xks
///       customKeyStoreType: EXTERNAL_KEY_STORE
///       xksProxyAuthenticationCredential:
///         accessKeyId: ${ephemeralAccessKeyId}
///         rawSecretAccessKey: ${ephemeralSecretAccessKey}
///       xksProxyConnectivity: VPC_ENDPOINT_SERVICE
///       xksProxyUriEndpoint: https://myproxy-private.xks.example.com
///       xksProxyUriPath: /kms/xks/v1
///       xksProxyVpcEndpointServiceName: com.amazonaws.vpce.us-east-1.vpce-svc-example
/// ```
///
///
/// ### External Key Store (Public)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.CustomKeyStore("example", {
///     customKeyStoreName: "example-public-xks",
///     customKeyStoreType: "EXTERNAL_KEY_STORE",
///     xksProxyAuthenticationCredential: {
///         accessKeyId: ephemeralAccessKeyId,
///         rawSecretAccessKey: ephemeralSecretAccessKey,
///     },
///     xksProxyConnectivity: "PUBLIC_ENDPOINT",
///     xksProxyUriEndpoint: "https://myproxy.xks.example.com",
///     xksProxyUriPath: "/kms/xks/v1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.CustomKeyStore("example",
///     custom_key_store_name="example-public-xks",
///     custom_key_store_type="EXTERNAL_KEY_STORE",
///     xks_proxy_authentication_credential={
///         "access_key_id": ephemeral_access_key_id,
///         "raw_secret_access_key": ephemeral_secret_access_key,
///     },
///     xks_proxy_connectivity="PUBLIC_ENDPOINT",
///     xks_proxy_uri_endpoint="https://myproxy.xks.example.com",
///     xks_proxy_uri_path="/kms/xks/v1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kms.CustomKeyStore("example", new()
///     {
///         CustomKeyStoreName = "example-public-xks",
///         CustomKeyStoreType = "EXTERNAL_KEY_STORE",
///         XksProxyAuthenticationCredential = new Aws.Kms.Inputs.CustomKeyStoreXksProxyAuthenticationCredentialArgs
///         {
///             AccessKeyId = ephemeralAccessKeyId,
///             RawSecretAccessKey = ephemeralSecretAccessKey,
///         },
///         XksProxyConnectivity = "PUBLIC_ENDPOINT",
///         XksProxyUriEndpoint = "https://myproxy.xks.example.com",
///         XksProxyUriPath = "/kms/xks/v1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewCustomKeyStore(ctx, "example", &kms.CustomKeyStoreArgs{
/// 			CustomKeyStoreName: pulumi.String("example-public-xks"),
/// 			CustomKeyStoreType: pulumi.String("EXTERNAL_KEY_STORE"),
/// 			XksProxyAuthenticationCredential: &kms.CustomKeyStoreXksProxyAuthenticationCredentialArgs{
/// 				AccessKeyId:        pulumi.Any(ephemeralAccessKeyId),
/// 				RawSecretAccessKey: pulumi.Any(ephemeralSecretAccessKey),
/// 			},
/// 			XksProxyConnectivity: pulumi.String("PUBLIC_ENDPOINT"),
/// 			XksProxyUriEndpoint:  pulumi.String("https://myproxy.xks.example.com"),
/// 			XksProxyUriPath:      pulumi.String("/kms/xks/v1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kms.CustomKeyStore;
/// import com.pulumi.aws.kms.CustomKeyStoreArgs;
/// import com.pulumi.aws.kms.inputs.CustomKeyStoreXksProxyAuthenticationCredentialArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new CustomKeyStore("example", CustomKeyStoreArgs.builder()
///             .customKeyStoreName("example-public-xks")
///             .customKeyStoreType("EXTERNAL_KEY_STORE")
///             .xksProxyAuthenticationCredential(CustomKeyStoreXksProxyAuthenticationCredentialArgs.builder()
///                 .accessKeyId(ephemeralAccessKeyId)
///                 .rawSecretAccessKey(ephemeralSecretAccessKey)
///                 .build())
///             .xksProxyConnectivity("PUBLIC_ENDPOINT")
///             .xksProxyUriEndpoint("https://myproxy.xks.example.com")
///             .xksProxyUriPath("/kms/xks/v1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:CustomKeyStore
///     properties:
///       customKeyStoreName: example-public-xks
///       customKeyStoreType: EXTERNAL_KEY_STORE
///       xksProxyAuthenticationCredential:
///         accessKeyId: ${ephemeralAccessKeyId}
///         rawSecretAccessKey: ${ephemeralSecretAccessKey}
///       xksProxyConnectivity: PUBLIC_ENDPOINT
///       xksProxyUriEndpoint: https://myproxy.xks.example.com
///       xksProxyUriPath: /kms/xks/v1
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import KMS (Key Management) Custom Key Store using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:kms/customKeyStore:CustomKeyStore example cks-5ebd4ef395a96288e
/// ```
class CustomKeyStore extends pulumi.CustomResource {
  late final pulumi.Output<String?> cloudHsmClusterId;

  /// Unique name for Custom Key Store.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> customKeyStoreName;

  /// Specifies the type of key store to create. Valid values are `AWS_CLOUDHSM` and `EXTERNAL_KEY_STORE`. If omitted, AWS will default the value to `AWS_CLOUDHSM`.
  late final pulumi.Output<String> customKeyStoreType;
  late final pulumi.Output<String?> keyStorePassword;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<String?> trustAnchorCertificate;
  late final pulumi.Output<CustomKeyStoreXksProxyAuthenticationCredential?>
  xksProxyAuthenticationCredential;
  late final pulumi.Output<String?> xksProxyConnectivity;
  late final pulumi.Output<String?> xksProxyUriEndpoint;
  late final pulumi.Output<String?> xksProxyUriPath;
  late final pulumi.Output<String?> xksProxyVpcEndpointServiceName;

  /// Creates a new [CustomKeyStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomKeyStore]. {@macro pulumi_kms_custom_key_store_custom_key_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomKeyStore(
    String name, {
    CustomKeyStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:kms/customKeyStore:CustomKeyStore',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cloudHsmClusterId = registerOutput<String?>('cloudHsmClusterId');
    customKeyStoreName = registerOutput<String>('customKeyStoreName');
    customKeyStoreType = registerOutput<String>('customKeyStoreType');
    keyStorePassword = registerOutput<String?>('keyStorePassword');
    region = registerOutput<String>('region');
    trustAnchorCertificate = registerOutput<String?>('trustAnchorCertificate');
    xksProxyAuthenticationCredential =
        registerOutput<CustomKeyStoreXksProxyAuthenticationCredential?>(
          'xksProxyAuthenticationCredential',
        );
    xksProxyConnectivity = registerOutput<String?>('xksProxyConnectivity');
    xksProxyUriEndpoint = registerOutput<String?>('xksProxyUriEndpoint');
    xksProxyUriPath = registerOutput<String?>('xksProxyUriPath');
    xksProxyVpcEndpointServiceName = registerOutput<String?>(
      'xksProxyVpcEndpointServiceName',
    );
  }

  /// Gets an existing [CustomKeyStore] resource's state with the given [name] and [id].
  static CustomKeyStore get(
    String name,
    pulumi.Input<String> id, {
    CustomKeyStoreState? state,
  }) {
    return CustomKeyStore._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomKeyStore._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:kms/customKeyStore:CustomKeyStore',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cloudHsmClusterId = registerOutput<String?>('cloudHsmClusterId');
    customKeyStoreName = registerOutput<String>('customKeyStoreName');
    customKeyStoreType = registerOutput<String>('customKeyStoreType');
    keyStorePassword = registerOutput<String?>('keyStorePassword');
    region = registerOutput<String>('region');
    trustAnchorCertificate = registerOutput<String?>('trustAnchorCertificate');
    xksProxyAuthenticationCredential =
        registerOutput<CustomKeyStoreXksProxyAuthenticationCredential?>(
          'xksProxyAuthenticationCredential',
        );
    xksProxyConnectivity = registerOutput<String?>('xksProxyConnectivity');
    xksProxyUriEndpoint = registerOutput<String?>('xksProxyUriEndpoint');
    xksProxyUriPath = registerOutput<String?>('xksProxyUriPath');
    xksProxyVpcEndpointServiceName = registerOutput<String?>(
      'xksProxyVpcEndpointServiceName',
    );
  }
}
