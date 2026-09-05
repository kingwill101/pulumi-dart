import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';
import 'instance_verified_access_trust_provider.dart';

/// Resource for managing a Verified Access Instance.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.verifiedaccess.Instance("example", {
///     description: "example",
///     tags: {
///         Name: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedaccess.Instance("example",
///     description="example",
///     tags={
///         "Name": "example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VerifiedAccess.Instance("example", new()
///     {
///         Description = "example",
///         Tags =
///         {
///             { "Name", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := verifiedaccess.NewInstance(ctx, "example", &verifiedaccess.InstanceArgs{
/// 			Description: pulumi.String("example"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
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
///   }
/// }
///
/// resource "aws_verifiedaccess_instance" "example" {
///   description = "example"
///   tags = {
///     "Name" = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.verifiedaccess.Instance;
/// import com.pulumi.aws.verifiedaccess.InstanceArgs;
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
///         var example = new Instance("example", InstanceArgs.builder()
///             .description("example")
///             .tags(Map.of("Name", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:verifiedaccess:Instance
///     properties:
///       description: example
///       tags:
///         Name: example
/// ```
///
///
/// ### With `fipsEnabled`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.verifiedaccess.Instance("example", {fipsEnabled: true});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedaccess.Instance("example", fips_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VerifiedAccess.Instance("example", new()
///     {
///         FipsEnabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := verifiedaccess.NewInstance(ctx, "example", &verifiedaccess.InstanceArgs{
/// 			FipsEnabled: pulumi.Bool(true),
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
///   }
/// }
///
/// resource "aws_verifiedaccess_instance" "example" {
///   fips_enabled = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.verifiedaccess.Instance;
/// import com.pulumi.aws.verifiedaccess.InstanceArgs;
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
///         var example = new Instance("example", InstanceArgs.builder()
///             .fipsEnabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:verifiedaccess:Instance
///     properties:
///       fipsEnabled: true
/// ```
///
///
/// ### With `cidrEndpointsCustomSubdomain`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.verifiedaccess.Instance("example", {cidrEndpointsCustomSubdomain: "test.example.com"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedaccess.Instance("example", cidr_endpoints_custom_subdomain="test.example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VerifiedAccess.Instance("example", new()
///     {
///         CidrEndpointsCustomSubdomain = "test.example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := verifiedaccess.NewInstance(ctx, "example", &verifiedaccess.InstanceArgs{
/// 			CidrEndpointsCustomSubdomain: pulumi.String("test.example.com"),
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
///   }
/// }
///
/// resource "aws_verifiedaccess_instance" "example" {
///   cidr_endpoints_custom_subdomain = "test.example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.verifiedaccess.Instance;
/// import com.pulumi.aws.verifiedaccess.InstanceArgs;
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
///         var example = new Instance("example", InstanceArgs.builder()
///             .cidrEndpointsCustomSubdomain("test.example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:verifiedaccess:Instance
///     properties:
///       cidrEndpointsCustomSubdomain: test.example.com
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Verified Access Instances using the  `id`. For example:
///
/// ```sh
/// $ pulumi import aws:verifiedaccess/instance:Instance example vai-1234567890abcdef0
/// ```
class Instance extends pulumi.CustomResource {
  /// The custom subdomain for the CIDR endpoints.
  late final pulumi.Output<String?> cidrEndpointsCustomSubdomain;
  /// The time that the Verified Access Instance was created.
  late final pulumi.Output<String> creationTime;
  /// A description for the AWS Verified Access Instance.
  late final pulumi.Output<String?> description;
  /// Enable or disable support for Federal Information Processing Standards (FIPS) on the AWS Verified Access Instance.
  late final pulumi.Output<bool?> fipsEnabled;
  /// The time that the Verified Access Instance was last updated.
  late final pulumi.Output<String> lastUpdatedTime;
  late final pulumi.Output<List<String>> nameServers;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// One or more blocks of providing information about the AWS Verified Access Trust Providers. See verifiedAccessTrustProviders below for details.One or more blocks
  late final pulumi.Output<List<InstanceVerifiedAccessTrustProvider>> verifiedAccessTrustProviders;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_verifiedaccess_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:verifiedaccess/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    cidrEndpointsCustomSubdomain = registerOutput<String?>('cidrEndpointsCustomSubdomain');
    creationTime = registerOutput<String>('creationTime');
    description = registerOutput<String?>('description');
    fipsEnabled = registerOutput<bool?>('fipsEnabled');
    lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    nameServers = registerOutput<List<String>>('nameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    verifiedAccessTrustProviders = registerOutput<List<InstanceVerifiedAccessTrustProvider>>('verifiedAccessTrustProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceVerifiedAccessTrustProvider>(guardedValue, (value) => InstanceVerifiedAccessTrustProvider.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:verifiedaccess/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cidrEndpointsCustomSubdomain = registerOutput<String?>('cidrEndpointsCustomSubdomain');
    creationTime = registerOutput<String>('creationTime');
    description = registerOutput<String?>('description');
    fipsEnabled = registerOutput<bool?>('fipsEnabled');
    lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    nameServers = registerOutput<List<String>>('nameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    verifiedAccessTrustProviders = registerOutput<List<InstanceVerifiedAccessTrustProvider>>('verifiedAccessTrustProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceVerifiedAccessTrustProvider>(guardedValue, (value) => InstanceVerifiedAccessTrustProvider.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Instance] resource.
  Instance.reference(String urn)
    : super(
        'aws:verifiedaccess/instance:Instance',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cidrEndpointsCustomSubdomain = registerOutput<String?>('cidrEndpointsCustomSubdomain');
    creationTime = registerOutput<String>('creationTime');
    description = registerOutput<String?>('description');
    fipsEnabled = registerOutput<bool?>('fipsEnabled');
    lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    nameServers = registerOutput<List<String>>('nameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    verifiedAccessTrustProviders = registerOutput<List<InstanceVerifiedAccessTrustProvider>>('verifiedAccessTrustProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceVerifiedAccessTrustProvider>(guardedValue, (value) => InstanceVerifiedAccessTrustProvider.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
