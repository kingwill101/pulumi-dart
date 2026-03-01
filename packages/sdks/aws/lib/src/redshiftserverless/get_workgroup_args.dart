// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshiftserverless_get_workgroup_get_workgroup_args_doc}
/// Arguments for getWorkgroup.
/// {@endtemplate}
/// {@macro pulumi_redshiftserverless_get_workgroup_get_workgroup_args_doc}
class GetWorkgroupArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the workgroup associated with the database.
  final pulumi.Input<String> workgroupName;

  /// Creates a new [GetWorkgroupArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [workgroupName] The name of the workgroup associated with the database.
  GetWorkgroupArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<String> workgroupName,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      workgroupName = pulumi.Input.asInput<String>(workgroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'workgroupName': workgroupName,
    };
  }

  factory GetWorkgroupArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkgroupArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      workgroupName: pulumi.Output.create<String>(map['workgroupName'] as String),
    );
  }
}

