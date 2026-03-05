// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getShare.
class GetShareResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Time at which the share was created.
  final String createdAt;
  /// Share description.
  final String? description;
  /// The resource id of the azure resource
  final String id;
  /// Name of the azure resource
  final String name;
  /// Gets or sets the provisioning state
  final String provisioningState;
  /// Share kind.
  final String? shareKind;
  /// System Data of the Azure resource.
  final SystemDataResponse systemData;
  /// Share terms.
  final String? terms;
  /// Type of the azure resource
  final String type;
  /// Email of the user who created the resource
  final String userEmail;
  /// Name of the user who created the resource
  final String userName;

  /// Creates a new [GetShareResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdAt] Time at which the share was created.
  /// [description] Share description.
  /// [id] The resource id of the azure resource
  /// [name] Name of the azure resource
  /// [provisioningState] Gets or sets the provisioning state
  /// [shareKind] Share kind.
  /// [systemData] System Data of the Azure resource.
  /// [terms] Share terms.
  /// [type] Type of the azure resource
  /// [userEmail] Email of the user who created the resource
  /// [userName] Name of the user who created the resource
  GetShareResult({
    required this.azureApiVersion,
    required this.createdAt,
    this.description,
    required this.id,
    required this.name,
    required this.provisioningState,
    this.shareKind,
    required this.systemData,
    this.terms,
    required this.type,
    required this.userEmail,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdAt': createdAt,
      'description': ?description,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'shareKind': ?shareKind,
      'systemData': systemData.toMap(),
      'terms': ?terms,
      'type': type,
      'userEmail': userEmail,
      'userName': userName,
    };
  }

  factory GetShareResult.fromMap(Map<String, dynamic> map) {
    return GetShareResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdAt: map['createdAt'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      shareKind: (() { final guardedValue = map['shareKind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      terms: (() { final guardedValue = map['terms']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
      userEmail: map['userEmail'] as String,
      userName: map['userName'] as String,
    );
  }
}

