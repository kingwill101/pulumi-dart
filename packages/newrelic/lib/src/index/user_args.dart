// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_index_user_user_args_doc}
class UserArgs {
  /// The ID of the authentication domain to which the user to be created would belong.
  final pulumi.Input<String> authenticationDomainId;
  /// The email ID of the user to be created.
  final pulumi.Input<String> emailId;
  /// The name of the user to be created.
  final pulumi.Input<String>? name;
  /// The tier to which the user to be created would belong. Accepted values for this argument are `BASIC_USER_TIER`, `CORE_USER_TIER`, or `FULL_USER_TIER`. If not specified in the configuration, the argument would default to `BASIC_USER_TIER`.
  ///
  /// > **NOTE** The ID of an authentication domain can be retrieved using its name, via the data source `newrelic.getAuthenticationDomain`, as shown in the example above. Head over to the documentation of this data source for more details and examples.
  ///
  /// > **WARNING:** Changing the `authentication_domain_id` of a `newrelic.User` resource that has already been applied would result in a **replacement** of the resource – destruction of the existing resource, followed by the addition of a new resource with the specified configuration. This is due to the fact that updating the `authentication_domain_id` of an existing user is not supported.
  final pulumi.Input<String>? userType;

  /// Creates a new [UserArgs].
  /// [authenticationDomainId] The ID of the authentication domain to which the user to be created would belong.
  /// [emailId] The email ID of the user to be created.
  /// [name] The name of the user to be created.
  /// [userType] The tier to which the user to be created would belong. Accepted values for this argument are `BASIC_USER_TIER`, `CORE_USER_TIER`, or `FULL_USER_TIER`. If not specified in the configuration, the argument would default to `BASIC_USER_TIER`.
  UserArgs({
    required String authenticationDomainId,
    required String emailId,
    String? name,
    String? userType,
  }) :
      authenticationDomainId = pulumi.Input.asInput<String>(authenticationDomainId),
      emailId = pulumi.Input.asInput<String>(emailId),
      name = pulumi.Input.asOptionalInput<String>(name),
      userType = pulumi.Input.asOptionalInput<String>(userType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationDomainId': authenticationDomainId,
      'emailId': emailId,
      'name': ?name,
      'userType': ?userType,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      authenticationDomainId: map['authenticationDomainId'] as String,
      emailId: map['emailId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      userType: map['userType'] == null ? null : map['userType'] as String,
    );
  }
}

