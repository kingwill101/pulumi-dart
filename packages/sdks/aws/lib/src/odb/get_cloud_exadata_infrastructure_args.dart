// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_odb_get_cloud_exadata_infrastructure_get_cloud_exadata_infrastructure_args_doc}
/// Arguments for getCloudExadataInfrastructure.
/// {@endtemplate}
/// {@macro pulumi_odb_get_cloud_exadata_infrastructure_get_cloud_exadata_infrastructure_args_doc}
class GetCloudExadataInfrastructureArgs {
  /// The unique identifier of the Exadata infrastructure.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetCloudExadataInfrastructureArgs].
  /// [id] The unique identifier of the Exadata infrastructure.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetCloudExadataInfrastructureArgs({
    required pulumi.Output<String> id,
    pulumi.Output<String>? region,
  }) :
      id = pulumi.Input.asInput<String>(id),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': ?region,
    };
  }

  factory GetCloudExadataInfrastructureArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructureArgs(
      id: pulumi.Output.create<String>(map['id'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

