// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_control_set.dart';

/// {@template pulumi_auditmanager_framework_framework_args_doc}
/// The set of arguments for Framework.
/// {@endtemplate}
/// {@macro pulumi_auditmanager_framework_framework_args_doc}
class FrameworkArgs {
  /// Compliance type that the new custom framework supports, such as `CIS` or `HIPAA`.
  final pulumi.Input<String>? complianceType;
  /// Configuration block(s) for the control sets that are associated with the framework. See `control_sets` Block below for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<FrameworkControlSet>>? controlSets;
  /// Description of the framework.
  final pulumi.Input<String>? description;
  /// Name of the framework.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the framework. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FrameworkArgs].
  /// [complianceType] Compliance type that the new custom framework supports, such as `CIS` or `HIPAA`.
  /// [controlSets] Configuration block(s) for the control sets that are associated with the framework. See `control_sets` Block below for details.
  /// [description] Description of the framework.
  /// [name] Name of the framework.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the framework. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  FrameworkArgs({
    pulumi.Output<String>? complianceType,
    pulumi.Output<List<FrameworkControlSet>>? controlSets,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      complianceType = pulumi.Input.asOptionalInput<String>(complianceType),
      controlSets = pulumi.Input.asOptionalInput<List<FrameworkControlSet>>(controlSets),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      complianceType: map['complianceType'] == null ? null : pulumi.Output.create<String>(map['complianceType'] as String),
      controlSets: map['controlSets'] == null ? null : pulumi.Output.create<List<FrameworkControlSet>>(pulumi.Input.decodeList<FrameworkControlSet>(map['controlSets'], (value) => FrameworkControlSet.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

