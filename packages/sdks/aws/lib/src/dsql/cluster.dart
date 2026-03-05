import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_multi_region_properties.dart';
import 'cluster_state.dart';
import 'cluster_timeouts.dart';

/// Resource for managing an Amazon Aurora DSQL Cluster.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dsql.Cluster("example", {
///     deletionProtectionEnabled: true,
///     tags: {
///         Name: "TestCluster",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dsql.Cluster("example",
///     deletion_protection_enabled=True,
///     tags={
///         "Name": "TestCluster",
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
///     var example = new Aws.Dsql.Cluster("example", new()
///     {
///         DeletionProtectionEnabled = true,
///         Tags =
///         {
///             { "Name", "TestCluster" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dsql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dsql.NewCluster(ctx, "example", &dsql.ClusterArgs{
/// 			DeletionProtectionEnabled: pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("TestCluster"),
/// 			},
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
/// import com.pulumi.aws.dsql.Cluster;
/// import com.pulumi.aws.dsql.ClusterArgs;
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
///         var example = new Cluster("example", ClusterArgs.builder()
///             .deletionProtectionEnabled(true)
///             .tags(Map.of("Name", "TestCluster"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:dsql:Cluster
///     properties:
///       deletionProtectionEnabled: true
///       tags:
///         Name: TestCluster
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DSQL Cluster using the `identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:dsql/cluster:Cluster example abcde1f234ghijklmnop5qr6st
/// ```
class Cluster extends pulumi.CustomResource {
  /// ARN of the Cluster.
  late final pulumi.Output<String> arn;

  /// Whether deletion protection is enabled in this cluster.
  /// Default value is `false`.
  late final pulumi.Output<bool> deletionProtectionEnabled;

  /// Encryption configuration details for the DSQL Cluster.
  late final pulumi.Output<List<Map<String, dynamic>>> encryptionDetails;

  /// Destroys cluster even if `deletion_protection_enabled` is set to `true`.
  /// Default value is `false`.
  late final pulumi.Output<bool> forceDestroy;

  /// Cluster Identifier.
  late final pulumi.Output<String> identifier;

  /// The ARN of the AWS KMS key that encrypts data in the DSQL Cluster, or `"AWS_OWNED_KMS_KEY"`.
  late final pulumi.Output<String> kmsEncryptionKey;

  /// Multi-region properties of the DSQL Cluster.
  late final pulumi.Output<ClusterMultiRegionProperties?> multiRegionProperties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Set of tags to be associated with the AWS DSQL Cluster resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ClusterTimeouts?> timeouts;

  /// The DSQL Cluster's VPC endpoint service name.
  late final pulumi.Output<String> vpcEndpointServiceName;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_dsql_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:dsql/cluster:Cluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    deletionProtectionEnabled = registerOutput<bool>(
      'deletionProtectionEnabled',
    );
    encryptionDetails = registerOutput<List<Map<String, dynamic>>>(
      'encryptionDetails',
    );
    forceDestroy = registerOutput<bool>('forceDestroy');
    identifier = registerOutput<String>('identifier');
    kmsEncryptionKey = registerOutput<String>('kmsEncryptionKey');
    multiRegionProperties = registerOutput<ClusterMultiRegionProperties?>(
      'multiRegionProperties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ClusterMultiRegionProperties.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ClusterTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ClusterTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    vpcEndpointServiceName = registerOutput<String>('vpcEndpointServiceName');
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Cluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:dsql/cluster:Cluster',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    deletionProtectionEnabled = registerOutput<bool>(
      'deletionProtectionEnabled',
    );
    encryptionDetails = registerOutput<List<Map<String, dynamic>>>(
      'encryptionDetails',
    );
    forceDestroy = registerOutput<bool>('forceDestroy');
    identifier = registerOutput<String>('identifier');
    kmsEncryptionKey = registerOutput<String>('kmsEncryptionKey');
    multiRegionProperties = registerOutput<ClusterMultiRegionProperties?>(
      'multiRegionProperties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ClusterMultiRegionProperties.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ClusterTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ClusterTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    vpcEndpointServiceName = registerOutput<String>('vpcEndpointServiceName');
  }
}
