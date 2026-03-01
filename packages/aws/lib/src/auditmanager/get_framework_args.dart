// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_auditmanager_get_framework_get_framework_args_doc}
/// Arguments for getFramework.
/// {@endtemplate}
/// {@macro pulumi_auditmanager_get_framework_get_framework_args_doc}
class GetFrameworkArgs {
  final pulumi.Input<String> frameworkType;

  /// Name of the framework.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetFrameworkArgs].
  /// [frameworkType] Required.
  /// [name] Name of the framework.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetFrameworkArgs({
    required String frameworkType,
    required String name,
    String? region,
  }) : frameworkType = pulumi.Input.asInput<String>(frameworkType),
       name = pulumi.Input.asInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frameworkType': frameworkType,
      'name': name,
      'region': ?region,
    };
  }

  factory GetFrameworkArgs.fromMap(Map<String, dynamic> map) {
    return GetFrameworkArgs(
      frameworkType: map['frameworkType'] as String,
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
