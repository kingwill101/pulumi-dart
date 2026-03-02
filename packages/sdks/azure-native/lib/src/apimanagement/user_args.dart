// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_identity_contract.dart';

/// {@template pulumi_apimanagement_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_user_args_doc}
class UserArgs {
  /// Determines the type of application which send the create user request. Default is legacy portal.
  final pulumi.Input<String>? appType;
  /// Determines the type of confirmation e-mail that will be sent to the newly created user.
  final pulumi.Input<String>? confirmation;
  /// Email address. Must not be empty and must be unique within the service instance.
  final pulumi.Input<String> email;
  /// First name.
  final pulumi.Input<String> firstName;
  /// Collection of user identities.
  final pulumi.Input<List<UserIdentityContract>>? identities;
  /// Last name.
  final pulumi.Input<String> lastName;
  /// Optional note about a user set by the administrator.
  final pulumi.Input<String>? note;
  /// Send an Email notification to the User.
  final pulumi.Input<bool>? notify;
  /// User Password. If no value is provided, a default password is generated.
  final pulumi.Input<String>? password;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Account state. Specifies whether the user is active or not. Blocked users are unable to sign into the developer portal or call any APIs of subscribed products. Default state is Active.
  final pulumi.Input<String>? state;
  /// User identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? userId;

  /// Creates a new [UserArgs].
  /// [appType] Determines the type of application which send the create user request. Default is legacy portal.
  /// [confirmation] Determines the type of confirmation e-mail that will be sent to the newly created user.
  /// [email] Email address. Must not be empty and must be unique within the service instance.
  /// [firstName] First name.
  /// [identities] Collection of user identities.
  /// [lastName] Last name.
  /// [note] Optional note about a user set by the administrator.
  /// [notify] Send an Email notification to the User.
  /// [password] User Password. If no value is provided, a default password is generated.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [state] Account state. Specifies whether the user is active or not. Blocked users are unable to sign into the developer portal or call any APIs of subscribed products. Default state is Active.
  /// [userId] User identifier. Must be unique in the current API Management service instance.
  UserArgs({
    this.appType,
    this.confirmation,
    required this.email,
    required this.firstName,
    this.identities,
    required this.lastName,
    this.note,
    this.notify,
    this.password,
    required this.resourceGroupName,
    required this.serviceName,
    this.state,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appType': ?appType,
      'confirmation': ?confirmation,
      'email': email,
      'firstName': firstName,
      'identities': ?pulumi.Input.mapOptionalInputValue<List<UserIdentityContract>, List<Map<String, dynamic>>>(identities, (value) => pulumi.Input.encodeList<UserIdentityContract, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastName': lastName,
      'note': ?note,
      'notify': ?notify,
      'password': ?password,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'state': ?state,
      'userId': ?userId,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      appType: map['appType'] == null ? null : (map['appType'] as String).input(),
      confirmation: map['confirmation'] == null ? null : (map['confirmation'] as String).input(),
      email: (map['email'] as String).input(),
      firstName: (map['firstName'] as String).input(),
      identities: map['identities'] == null ? null : (pulumi.Input.decodeList<UserIdentityContract>(map['identities'], (value) => UserIdentityContract.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lastName: (map['lastName'] as String).input(),
      note: map['note'] == null ? null : (map['note'] as String).input(),
      notify: map['notify'] == null ? null : (map['notify'] as bool).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      userId: map['userId'] == null ? null : (map['userId'] as String).input(),
    );
  }
}

