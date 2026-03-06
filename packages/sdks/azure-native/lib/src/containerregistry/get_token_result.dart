// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';
import 'token_credentials_properties_response.dart';

/// Result data returned by getToken.
class GetTokenResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The creation date of scope map.
  final String creationDate;
  /// The credentials that can be used for authenticating the token.
  final TokenCredentialsPropertiesResponse? credentials;
  /// The resource ID.
  final String id;
  /// The name of the resource.
  final String name;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// The resource ID of the scope map to which the token will be associated with.
  final String? scopeMapId;
  /// The status of the token example enabled or disabled.
  final String? status;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetTokenResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationDate] The creation date of scope map.
  /// [credentials] The credentials that can be used for authenticating the token.
  /// [id] The resource ID.
  /// [name] The name of the resource.
  /// [provisioningState] Provisioning state of the resource.
  /// [scopeMapId] The resource ID of the scope map to which the token will be associated with.
  /// [status] The status of the token example enabled or disabled.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource.
  const GetTokenResult({
    required this.azureApiVersion,
    required this.creationDate,
    this.credentials,
    required this.id,
    required this.name,
    required this.provisioningState,
    this.scopeMapId,
    this.status,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationDate': creationDate,
      'credentials': ?credentials?.toMap(),
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'scopeMapId': ?scopeMapId,
      'status': ?status,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetTokenResult.fromMap(Map<String, dynamic> map) {
    return GetTokenResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationDate: map['creationDate'] as String,
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return TokenCredentialsPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      scopeMapId: (() { final guardedValue = map['scopeMapId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

