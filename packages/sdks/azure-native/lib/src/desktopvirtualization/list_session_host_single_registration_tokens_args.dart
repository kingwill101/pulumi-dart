// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_list_session_host_single_registration_tokens_args_doc}
/// Arguments for listSessionHostSingleRegistrationTokens.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_list_session_host_single_registration_tokens_args_doc}
class ListSessionHostSingleRegistrationTokensArgs {
  /// Expiration time of the registration token in UTC.
  final pulumi.Input<String> expirationTimeInUtc;
  /// The name of the host pool within the specified resource group
  final pulumi.Input<String> hostPoolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the session host within the specified host pool
  final pulumi.Input<String> sessionHostName;

  /// Creates a new [ListSessionHostSingleRegistrationTokensArgs].
  /// [expirationTimeInUtc] Expiration time of the registration token in UTC.
  /// [hostPoolName] The name of the host pool within the specified resource group
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sessionHostName] The name of the session host within the specified host pool
  const ListSessionHostSingleRegistrationTokensArgs({
    required this.expirationTimeInUtc,
    required this.hostPoolName,
    required this.resourceGroupName,
    required this.sessionHostName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTimeInUtc': expirationTimeInUtc,
      'hostPoolName': hostPoolName,
      'resourceGroupName': resourceGroupName,
      'sessionHostName': sessionHostName,
    };
  }

  factory ListSessionHostSingleRegistrationTokensArgs.fromMap(Map<String, dynamic> map) {
    return ListSessionHostSingleRegistrationTokensArgs(
      expirationTimeInUtc: pulumi.Input.fromValue(map['expirationTimeInUtc'] as String),
      hostPoolName: pulumi.Input.fromValue(map['hostPoolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sessionHostName: pulumi.Input.fromValue(map['sessionHostName'] as String),
    );
  }
}
