// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IPSet resources.
class IPSetState {
  /// Specifies whether GuardDuty is to start using the uploaded IPSet.
  final pulumi.Input<bool>? activate;
  /// Amazon Resource Name (ARN) of the GuardDuty IPSet.
  final pulumi.Input<String>? arn;
  /// The detector ID of the GuardDuty.
  final pulumi.Input<String>? detectorId;
  /// The format of the file that contains the IPSet. Valid values: `TXT` | `STIX` | `OTX_CSV` | `ALIEN_VAULT` | `PROOF_POINT` | `FIRE_EYE`
  final pulumi.Input<String>? format;
  /// The URI of the file that contains the IPSet.
  final pulumi.Input<String>? location;
  /// The friendly name to identify the IPSet.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [IPSetState].
  /// [activate] Specifies whether GuardDuty is to start using the uploaded IPSet.
  /// [arn] Amazon Resource Name (ARN) of the GuardDuty IPSet.
  /// [detectorId] The detector ID of the GuardDuty.
  /// [format] The format of the file that contains the IPSet. Valid values: `TXT` | `STIX` | `OTX_CSV` | `ALIEN_VAULT` | `PROOF_POINT` | `FIRE_EYE`
  /// [location] The URI of the file that contains the IPSet.
  /// [name] The friendly name to identify the IPSet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  IPSetState({
    pulumi.Output<bool>? activate,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? detectorId,
    pulumi.Output<String>? format,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      activate = pulumi.Input.asOptionalInput<bool>(activate),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      detectorId = pulumi.Input.asOptionalInput<String>(detectorId),
      format = pulumi.Input.asOptionalInput<String>(format),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activate': ?activate,
      'arn': ?arn,
      'detectorId': ?detectorId,
      'format': ?format,
      'location': ?location,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory IPSetState.fromMap(Map<String, dynamic> map) {
    return IPSetState(
      activate: map['activate'] == null ? null : pulumi.Output.create<bool>(map['activate'] as bool),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      detectorId: map['detectorId'] == null ? null : pulumi.Output.create<String>(map['detectorId'] as String),
      format: map['format'] == null ? null : pulumi.Output.create<String>(map['format'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

