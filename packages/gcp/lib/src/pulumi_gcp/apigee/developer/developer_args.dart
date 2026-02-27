// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../developer_attribute/developer_attribute.dart';

/// The set of arguments for Developer.
class DeveloperArgs {
  /// Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// Structure is documented below.
  final pulumi.Input<List<DeveloperAttribute>>? attributes;

  /// Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only..
  final pulumi.Input<String> email;

  /// First name of the developer.
  final pulumi.Input<String> firstName;

  /// Last name of the developer.
  final pulumi.Input<String> lastName;

  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;

  /// User name of the developer. Not used by Apigee hybrid.
  final pulumi.Input<String> userName;

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
      map['attributes'] = pulumi.Input.mapOptionalInputValue<
              List<DeveloperAttribute>, List<Map<String, dynamic>>>(
          attributesValue,
          (value) =>
              pulumi.Input.encodeList<DeveloperAttribute, Map<String, dynamic>>(
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
      attributes: pulumi.Input.asOptionalInput<List<DeveloperAttribute>>(
          map['attributes']),
      email: pulumi.Input.asInput<String>(map['email']),
      firstName: pulumi.Input.asInput<String>(map['firstName']),
      lastName: pulumi.Input.asInput<String>(map['lastName']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
      userName: pulumi.Input.asInput<String>(map['userName']),
    );
  }
}
