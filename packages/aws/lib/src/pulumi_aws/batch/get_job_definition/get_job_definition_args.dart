// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getJobDefinition.
class GetJobDefinitionArgs {
  /// ARN of the Job Definition. Do not begin the description with "An", "The", "Defines", "Indicates", or "Specifies," as these are verbose. In other words, "Indicates the amount of storage," can be rewritten as "Amount of storage," without losing any information.
  final pulumi.Input<String>? arn;

  /// The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The revision of the job definition.
  final pulumi.Input<int>? revision;

  /// The status of the job definition.
  final pulumi.Input<String>? status;

  GetJobDefinitionArgs({
    this.arn,
    this.name,
    this.region,
    this.revision,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final revisionValue = revision;
    if (revisionValue != null) {
      map['revision'] = revisionValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory GetJobDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionArgs(
      arn: pulumi.Input.asOptionalInput<String>(map['arn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      revision: pulumi.Input.asOptionalInput<int>(map['revision']),
      status: pulumi.Input.asOptionalInput<String>(map['status']),
    );
  }
}
