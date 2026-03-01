// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_odb_get_cloud_exadata_infrastructures_get_cloud_exadata_infrastructures_args_doc}
/// Arguments for getCloudExadataInfrastructures.
/// {@endtemplate}
/// {@macro pulumi_odb_get_cloud_exadata_infrastructures_get_cloud_exadata_infrastructures_args_doc}
class GetCloudExadataInfrastructuresArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetCloudExadataInfrastructuresArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetCloudExadataInfrastructuresArgs({String? region})
    : region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'region': ?region};
  }

  factory GetCloudExadataInfrastructuresArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructuresArgs(
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
