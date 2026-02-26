// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../api_key_restrictions/api_key_restrictions.dart';

/// The set of arguments for ApiKey.
class ApiKeyArgs {
  /// Human-readable display name of this API key. Modifiable by user.
  final Input<String>? displayName;

  /// The resource name of the key. The name must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. In another word, the name must match the regular expression: `a-z?`.
  ///
  ///
  ///
  /// - - -
  final Input<String>? name;

  /// The project for the resource
  final Input<String>? project;

  /// Key restrictions.
  final Input<ApiKeyRestrictions>? restrictions;

  /// The email of the service account the key is bound to. If this field is specified, the key is a service account bound key and auth enabled. See [Documentation](https://cloud.devsite.corp.google.com/docs/authentication/api-keys?#api-keys-bound-sa) for more details.
  final Input<String>? serviceAccountEmail;

  ApiKeyArgs({
    this.displayName,
    this.name,
    this.project,
    this.restrictions,
    this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final restrictionsValue = restrictions;
    if (restrictionsValue != null) {
      map['restrictions'] =
          Input.mapOptionalInputValue<ApiKeyRestrictions, Map<String, dynamic>>(
              restrictionsValue, (value) => value.toMap());
    }
    final serviceAccountEmailValue = serviceAccountEmail;
    if (serviceAccountEmailValue != null) {
      map['serviceAccountEmail'] = serviceAccountEmailValue;
    }
    return map;
  }

  factory ApiKeyArgs.fromMap(Map<String, dynamic> map) {
    return ApiKeyArgs(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      restrictions:
          Input.asOptionalInput<ApiKeyRestrictions>(map['restrictions']),
      serviceAccountEmail:
          Input.asOptionalInput<String>(map['serviceAccountEmail']),
    );
  }
}
