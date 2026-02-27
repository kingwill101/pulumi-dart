// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../framework_control_set/framework_control_set.dart';

/// The set of arguments for Framework.
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

  FrameworkArgs({
    this.complianceType,
    this.controlSets,
    this.description,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final complianceTypeValue = complianceType;
    if (complianceTypeValue != null) {
      map['complianceType'] = complianceTypeValue;
    }
    final controlSetsValue = controlSets;
    if (controlSetsValue != null) {
      map['controlSets'] = pulumi.Input.mapOptionalInputValue<
              List<FrameworkControlSet>, List<Map<String, dynamic>>>(
          controlSetsValue,
          (value) => pulumi.Input.encodeList<FrameworkControlSet,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory FrameworkArgs.fromMap(Map<String, dynamic> map) {
    return FrameworkArgs(
      complianceType:
          pulumi.Input.asOptionalInput<String>(map['complianceType']),
      controlSets: pulumi.Input.asOptionalInput<List<FrameworkControlSet>>(
          map['controlSets']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
