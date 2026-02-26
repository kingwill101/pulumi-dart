// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../developer_attribute/developer_attribute.dart';

/// The set of arguments for Developer.
class DeveloperArgs {
  /// Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// Structure is documented below.
  final Input<List<DeveloperAttribute>>? attributes;

  /// Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only..
  final Input<String> email;

  /// First name of the developer.
  final Input<String> firstName;

  /// Last name of the developer.
  final Input<String> lastName;

  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final Input<String> orgId;

  /// User name of the developer. Not used by Apigee hybrid.
  final Input<String> userName;

  DeveloperArgs({
    this.attributes,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.orgId,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = Input.mapOptionalInputValue<List<DeveloperAttribute>,
              List<Map<String, dynamic>>>(
          attributesValue,
          (value) => Input.encodeList<DeveloperAttribute, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    map['email'] = email;
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['orgId'] = orgId;
    map['userName'] = userName;
    return map;
  }

  factory DeveloperArgs.fromMap(Map<String, dynamic> map) {
    return DeveloperArgs(
      attributes:
          Input.asOptionalInput<List<DeveloperAttribute>>(map['attributes']),
      email: Input.asInput<String>(map['email']),
      firstName: Input.asInput<String>(map['firstName']),
      lastName: Input.asInput<String>(map['lastName']),
      orgId: Input.asInput<String>(map['orgId']),
      userName: Input.asInput<String>(map['userName']),
    );
  }
}
