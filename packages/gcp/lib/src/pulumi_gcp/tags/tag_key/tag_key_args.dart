// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TagKey.
class TagKeyArgs {
  /// Regular expression constraint for dynamic tag values, follows RE2 syntax. If present, it implicitly allows dynamic values (constrained by the regex).
  final Input<String>? allowedValuesRegex;

  /// User-assigned description of the TagKey. Must not exceed 256 characters.
  final Input<String>? description;

  /// Input only. The resource name of the new TagKey's parent. Must be of the form organizations/{org_id} or projects/{project_id_or_number}.
  final Input<String> parent;

  /// Optional. A purpose cannot be changed once set.
  /// A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag.
  /// Possible values are: `GCE_FIREWALL`, `DATA_GOVERNANCE`.
  final Input<String>? purpose;

  /// Optional. Purpose data cannot be changed once set.
  /// Purpose data corresponds to the policy system that the tag is intended for. For example, the GCE_FIREWALL purpose expects data in the following format: `network = "<project-name>/<vpc-name>"`.
  final Input<Map<String, String>>? purposeData;

  /// Input only. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace.
  /// The short name can have a maximum length of 256 characters. The permitted character set for the shortName includes all UTF-8 encoded Unicode characters except single quotes ('), double quotes ("), backslashes (\\), and forward slashes (/).
  final Input<String> shortName;

  TagKeyArgs({
    this.allowedValuesRegex,
    this.description,
    required this.parent,
    this.purpose,
    this.purposeData,
    required this.shortName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedValuesRegexValue = allowedValuesRegex;
    if (allowedValuesRegexValue != null) {
      map['allowedValuesRegex'] = allowedValuesRegexValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['parent'] = parent;
    final purposeValue = purpose;
    if (purposeValue != null) {
      map['purpose'] = purposeValue;
    }
    final purposeDataValue = purposeData;
    if (purposeDataValue != null) {
      map['purposeData'] = purposeDataValue;
    }
    map['shortName'] = shortName;
    return map;
  }

  factory TagKeyArgs.fromMap(Map<String, dynamic> map) {
    return TagKeyArgs(
      allowedValuesRegex:
          Input.asOptionalInput<String>(map['allowedValuesRegex']),
      description: Input.asOptionalInput<String>(map['description']),
      parent: Input.asInput<String>(map['parent']),
      purpose: Input.asOptionalInput<String>(map['purpose']),
      purposeData:
          Input.asOptionalInput<Map<String, String>>(map['purposeData']),
      shortName: Input.asInput<String>(map['shortName']),
    );
  }
}
