// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_control_set.dart';

/// Input properties used for looking up and filtering Framework resources.
class FrameworkState {
  /// Amazon Resource Name (ARN) of the framework.
  /// * `control_sets[*].id` - Unique identifier for the framework control set.
  final pulumi.Input<String>? arn;
  /// Compliance type that the new custom framework supports, such as `CIS` or `HIPAA`.
  final pulumi.Input<String>? complianceType;
  /// Configuration block(s) for the control sets that are associated with the framework. See `control_sets` Block below for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<FrameworkControlSet>>? controlSets;
  /// Description of the framework.
  final pulumi.Input<String>? description;
  /// Framework type, such as a custom framework or a standard framework.
  final pulumi.Input<String>? frameworkType;
  /// Name of the framework.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the framework. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [FrameworkState].
  /// [arn] Amazon Resource Name (ARN) of the framework.
  /// [complianceType] Compliance type that the new custom framework supports, such as `CIS` or `HIPAA`.
  /// [controlSets] Configuration block(s) for the control sets that are associated with the framework. See `control_sets` Block below for details.
  /// [description] Description of the framework.
  /// [frameworkType] Framework type, such as a custom framework or a standard framework.
  /// [name] Name of the framework.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the framework. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  FrameworkState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? complianceType,
    pulumi.Output<List<FrameworkControlSet>>? controlSets,
    pulumi.Output<String>? description,
    pulumi.Output<String>? frameworkType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      complianceType = pulumi.Input.asOptionalInput<String>(complianceType),
      controlSets = pulumi.Input.asOptionalInput<List<FrameworkControlSet>>(controlSets),
      description = pulumi.Input.asOptionalInput<String>(description),
      frameworkType = pulumi.Input.asOptionalInput<String>(frameworkType),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'complianceType': ?complianceType,
      'controlSets': ?pulumi.Input.mapOptionalInputValue<List<FrameworkControlSet>, List<Map<String, dynamic>>>(controlSets, (value) => pulumi.Input.encodeList<FrameworkControlSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'frameworkType': ?frameworkType,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory FrameworkState.fromMap(Map<String, dynamic> map) {
    return FrameworkState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      complianceType: map['complianceType'] == null ? null : pulumi.Output.create<String>(map['complianceType'] as String),
      controlSets: map['controlSets'] == null ? null : pulumi.Output.create<List<FrameworkControlSet>>(pulumi.Input.decodeList<FrameworkControlSet>(map['controlSets'], (value) => FrameworkControlSet.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      frameworkType: map['frameworkType'] == null ? null : pulumi.Output.create<String>(map['frameworkType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

