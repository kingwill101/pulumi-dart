import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_args.dart';
import 'get_endpoint_result.dart';
import 'get_registration_code_args.dart';
import 'get_registration_code_result.dart';

/// Returns a unique endpoint specific to the AWS account making the call.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as kubernetes from "@pulumi/kubernetes";
///
/// const example = aws.iot.getEndpoint({});
/// const agent = new kubernetes.index.Pod("agent", {
///     metadata: [{
///         name: "my-device",
///     }],
///     spec: [{
///         container: [{
///             image: "gcr.io/my-project/image-name",
///             name: "image-name",
///             env: [{
///                 name: "IOT_ENDPOINT",
///                 value: example.endpointAddress,
///             }],
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_kubernetes as kubernetes
///
/// example = aws.iot.get_endpoint()
/// agent = kubernetes.Pod("agent",
///     metadata=[{
///         name: my-device,
///     }],
///     spec=[{
///         container: [{
///             image: gcr.io/my-project/image-name,
///             name: image-name,
///             env: [{
///                 name: IOT_ENDPOINT,
///                 value: example.endpoint_address,
///             }],
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Kubernetes = Pulumi.Kubernetes;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iot.GetEndpoint.Invoke();
///
///     var agent = new Kubernetes.Pod("agent", new()
///     {
///         Metadata = new[]
///         {
///
///             {
///                 { "name", "my-device" },
///             },
///         },
///         Spec = new[]
///         {
///
///             {
///                 { "container", new[]
///                 {
///
///                     {
///                         { "image", "gcr.io/my-project/image-name" },
///                         { "name", "image-name" },
///                         { "env", new[]
///                         {
///
///                             {
///                                 { "name", "IOT_ENDPOINT" },
///                                 { "value", example.Apply(getEndpointResult => getEndpointResult.EndpointAddress) },
///                             },
///                         } },
///                     },
///                 } },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// 	"github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := iot.GetEndpoint(ctx, &iot.GetEndpointArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kubernetes.NewPod(ctx, "agent", &kubernetes.PodArgs{
/// 			Metadata: []map[string]string{
/// 				{
/// 					"name": "my-device",
/// 				},
/// 			},
/// 			Spec: []map[string][]map[string]interface{}{
/// 				map[string][]map[string]interface{}{
/// 					"container": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"image": "gcr.io/my-project/image-name",
/// 							"name":  "image-name",
/// 							"env": []map[string]interface{}{
/// 								map[string]interface{}{
/// 									"name":  "IOT_ENDPOINT",
/// 									"value": example.EndpointAddress,
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     kubernetes = {
///       source = "pulumi/kubernetes"
///     }
///   }
/// }
///
/// data "aws_iot_getendpoint" "example" {
/// }
///
/// resource "kubernetes_pod" "agent" {
///   metadata = [{
///     "name" = "my-device"
///   }]
///   spec = [{
///     "container" = [{
///       "image" = "gcr.io/my-project/image-name"
///       "name"  = "image-name"
///       "env" = [{
///         "name"  = "IOT_ENDPOINT"
///         "value" = data.aws_iot_getendpoint.example.endpoint_address
///       }]
///     }]
///   }]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iot.IotFunctions;
/// import com.pulumi.aws.iot.inputs.GetEndpointArgs;
/// import com.pulumi.kubernetes.Pod;
/// import com.pulumi.kubernetes.PodArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = IotFunctions.getEndpoint(GetEndpointArgs.builder()
///             .build());
///
///         var agent = new Pod("agent", PodArgs.builder()
///             .metadata(Arrays.asList(Map.of("name", "my-device")))
///             .spec(Arrays.asList(Map.of("container", Arrays.asList(Map.ofEntries(
///                 Map.entry("image", "gcr.io/my-project/image-name"),
///                 Map.entry("name", "image-name"),
///                 Map.entry("env", Arrays.asList(Map.ofEntries(
///                     Map.entry("name", "IOT_ENDPOINT"),
///                     Map.entry("value", example.endpointAddress())
///                 )))
///             )))))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agent:
///     type: kubernetes:Pod
///     properties:
///       metadata:
///         - name: my-device
///       spec:
///         - container:
///             - image: gcr.io/my-project/image-name
///               name: image-name
///               env:
///                 - name: IOT_ENDPOINT
///                   value: ${example.endpointAddress}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iot:getEndpoint
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iot_get_endpoint_get_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointResult> getEndpoint(
  GetEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iot/getEndpoint:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult.fromMap(result);
}

/// Gets a registration code used to register a CA certificate with AWS IoT.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as tls from "@pulumi/tls";
///
/// const example = aws.iot.getRegistrationCode({});
/// const verification = new tls.PrivateKey("verification", {algorithm: "RSA"});
/// const verificationCertRequest = new tls.CertRequest("verification", {
///     keyAlgorithm: "RSA",
///     privateKeyPem: verification.privateKeyPem,
///     subject: [{
///         commonName: example.then(example => example.registrationCode),
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_tls as tls
///
/// example = aws.iot.get_registration_code()
/// verification = tls.PrivateKey("verification", algorithm="RSA")
/// verification_cert_request = tls.CertRequest("verification",
///     key_algorithm="RSA",
///     private_key_pem=verification.private_key_pem,
///     subject=[{
///         "commonName": example.registration_code,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Tls = Pulumi.Tls;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iot.GetRegistrationCode.Invoke();
///
///     var verification = new Tls.PrivateKey("verification", new()
///     {
///         Algorithm = "RSA",
///     });
///
///     var verificationCertRequest = new Tls.CertRequest("verification", new()
///     {
///         KeyAlgorithm = "RSA",
///         PrivateKeyPem = verification.PrivateKeyPem,
///         Subject = new[]
///         {
///
///             {
///                 { "commonName", example.Apply(getRegistrationCodeResult => getRegistrationCodeResult.RegistrationCode) },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// 	"github.com/pulumi/pulumi-tls/sdk/v5/go/tls"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := iot.GetRegistrationCode(ctx, &iot.GetRegistrationCodeArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		verification, err := tls.NewPrivateKey(ctx, "verification", &tls.PrivateKeyArgs{
/// 			Algorithm: pulumi.String("RSA"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = tls.NewCertRequest(ctx, "verification", &tls.CertRequestArgs{
/// 			KeyAlgorithm:  "RSA",
/// 			PrivateKeyPem: verification.PrivateKeyPem,
/// 			Subject: tls.CertRequestSubjectArgs{
/// 				map[string]interface{}{
/// 					"commonName": example.RegistrationCode,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     tls = {
///       source = "pulumi/tls"
///     }
///   }
/// }
///
/// data "aws_iot_getregistrationcode" "example" {
/// }
///
/// resource "tls_privatekey" "verification" {
///   algorithm = "RSA"
/// }
/// resource "tls_certrequest" "verification" {
///   key_algorithm   = "RSA"
///   private_key_pem = tls_privatekey.verification.private_key_pem
///   subject = [{
///     "commonName" = data.aws_iot_getregistrationcode.example.registration_code
///   }]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iot.IotFunctions;
/// import com.pulumi.aws.iot.inputs.GetRegistrationCodeArgs;
/// import com.pulumi.tls.PrivateKey;
/// import com.pulumi.tls.PrivateKeyArgs;
/// import com.pulumi.tls.CertRequest;
/// import com.pulumi.tls.CertRequestArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = IotFunctions.getRegistrationCode(GetRegistrationCodeArgs.builder()
///             .build());
///
///         var verification = new PrivateKey("verification", PrivateKeyArgs.builder()
///             .algorithm("RSA")
///             .build());
///
///         var verificationCertRequest = new CertRequest("verificationCertRequest", CertRequestArgs.builder()
///             .keyAlgorithm("RSA")
///             .privateKeyPem(verification.privateKeyPem())
///             .subject(com.pulumi.tls.inputs.CertRequestSubjectArgs.builder()
///                 .commonName(example.registrationCode())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   verification:
///     type: tls:PrivateKey
///     properties:
///       algorithm: RSA
///   verificationCertRequest:
///     type: tls:CertRequest
///     name: verification
///     properties:
///       keyAlgorithm: RSA
///       privateKeyPem: ${verification.privateKeyPem}
///       subject:
///         - commonName: ${example.registrationCode}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iot:getRegistrationCode
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iot_get_registration_code_get_registration_code_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistrationCodeResult> getRegistrationCode(
  GetRegistrationCodeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iot/getRegistrationCode:getRegistrationCode',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistrationCodeResult.fromMap(result);
}
