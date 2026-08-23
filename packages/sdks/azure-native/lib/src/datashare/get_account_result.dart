// ignore_for_file: unused_element, unnecessary_cast

import 'identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Time at which the account was created.
  final String createdAt;
  /// The resource id of the azure resource
  final String id;
  /// Identity Info on the Account
  final IdentityResponse identity;
  /// Location of the azure resource.
  final String? location;
  /// Name of the azure resource
  final String name;
  /// Provisioning state of the Account
  final String provisioningState;
  /// System Data of the Azure resource.
  final SystemDataResponse systemData;
  /// Tags on the azure resource.
  final Map<String, String>? tags;
  /// Type of the azure resource
  final String type;
  /// Email of the user who created the resource
  final String userEmail;
  /// Name of the user who created the resource
  final String userName;

  /// Creates a new [GetAccountResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdAt] Time at which the account was created.
  /// [id] The resource id of the azure resource
  /// [identity] Identity Info on the Account
  /// [location] Location of the azure resource.
  /// [name] Name of the azure resource
  /// [provisioningState] Provisioning state of the Account
  /// [systemData] System Data of the Azure resource.
  /// [tags] Tags on the azure resource.
  /// [type] Type of the azure resource
  /// [userEmail] Email of the user who created the resource
  /// [userName] Name of the user who created the resource
  const GetAccountResult({
    required this.azureApiVersion,
    required this.createdAt,
    required this.id,
    required this.identity,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    required this.userEmail,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdAt': createdAt,
      'id': id,
      'identity': identity.toMap(),
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'userEmail': userEmail,
      'userName': userName,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      identity: IdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      userEmail: map['userEmail'] as String,
      userName: map['userName'] as String,
    );
  }
}
