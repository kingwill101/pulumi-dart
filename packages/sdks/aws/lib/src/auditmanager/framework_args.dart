// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_control_set.dart';

/// {@template pulumi_auditmanager_framework_framework_args_doc}
/// The set of arguments for Framework.
/// {@endtemplate}
/// {@macro pulumi_auditmanager_framework_framework_args_doc}
class FrameworkArgs {
  /// Compliance type that the new custom framework supports, such as `CIS` or `HIPAA`.
  final pulumi.Input<String?>? complianceType;
  /// Configuration block(s) for the control sets that are associated with the framework. See `controlSets` Block below for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<FrameworkControlSet>?>? controlSets;
  /// Description of the framework.
  final pulumi.Input<String?>? description;
  /// Name of the framework.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the framework. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [FrameworkArgs].
  /// [complianceType] Compliance type that the new custom framework supports, such as `CIS` or `HIPAA`.
  /// [controlSets] Configuration block(s) for the control sets that are associated with the framework. See `controlSets` Block below for details.
  /// [description] Description of the framework.
  /// [name] Name of the framework.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the framework. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const FrameworkArgs({
    this.complianceType,
    this.controlSets,
    this.description,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceType': ?complianceType,
      'controlSets': ?pulumi.Input.mapOptionalInputValue<List<FrameworkControlSet>, List<Map<String, dynamic>>>(controlSets, (value) => pulumi.Input.encodeList<FrameworkControlSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory FrameworkArgs.fromMap(Map<String, dynamic> map) {
    return FrameworkArgs(
      complianceType: (() { final guardedValue = map['complianceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      controlSets: (() { final guardedValue = map['controlSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrameworkControlSet>(guardedValue, (value) => FrameworkControlSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
