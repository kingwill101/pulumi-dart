import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_encryption_detail/cluster_encryption_detail.dart';
import '../cluster_multi_region_properties/cluster_multi_region_properties.dart';
import '../cluster_timeouts/cluster_timeouts.dart';
import 'cluster_dsql_args.dart';

/// Resource for managing an Amazon Aurora DSQL Cluster.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DSQL Cluster using the `identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:dsql/cluster:Cluster example abcde1f234ghijklmnop5qr6st
/// ```
class ClusterDsql extends pulumi.CustomResource {
  /// ARN of the Cluster.
  late final pulumi.Output<String> arn;

  /// Whether deletion protection is enabled in this cluster.
  /// Default value is `false`.
  late final pulumi.Output<bool> deletionProtectionEnabled;

  /// Encryption configuration details for the DSQL Cluster.
  late final pulumi.Output<List<ClusterEncryptionDetail>> encryptionDetails;

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

  ClusterDsql(
    String name, {
    ClusterDsqlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dsql/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deletionProtectionEnabled =
        registerOutput<bool>('deletionProtectionEnabled');
    this.encryptionDetails =
        registerOutput<List<ClusterEncryptionDetail>>('encryptionDetails');
    this.forceDestroy = registerOutput<bool>('forceDestroy');
    this.identifier = registerOutput<String>('identifier');
    this.kmsEncryptionKey = registerOutput<String>('kmsEncryptionKey');
    this.multiRegionProperties =
        registerOutput<ClusterMultiRegionProperties?>('multiRegionProperties');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ClusterTimeouts?>('timeouts');
    this.vpcEndpointServiceName =
        registerOutput<String>('vpcEndpointServiceName');
  }
}
