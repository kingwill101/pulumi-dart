// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getApplication.
class GetApplicationResult {
  /// Resource Type of Application.
  final String? applicationType;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Command Line Arguments for Application.
  final String? commandLineArguments;
  /// Specifies whether this published application can be launched with command line arguments provided by the client, command line arguments specified at publish time, or no command line arguments at all.
  final String? commandLineSetting;
  /// Description of Application.
  final String? description;
  /// Specifies a path for the executable file for the application.
  final String? filePath;
  /// Friendly name of Application.
  final String? friendlyName;
  /// the icon a 64 bit string as a byte array.
  final String? iconContent;
  /// Hash of the icon.
  final String? iconHash;
  /// Index of the icon.
  final int? iconIndex;
  /// Path to icon.
  final String? iconPath;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Specifies the package application Id for MSIX applications
  final String? msixPackageApplicationId;
  /// Specifies the package family name for MSIX applications
  final String? msixPackageFamilyName;
  /// The name of the resource
  final String? name;
  /// ObjectId of Application. (internal use)
  final String? objectId;
  /// Specifies whether to show the RemoteApp program in the RD Web Access server.
  final bool? showInPortal;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetApplicationResult].
  /// [applicationType] Resource Type of Application.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [commandLineArguments] Command Line Arguments for Application.
  /// [commandLineSetting] Specifies whether this published application can be launched with command line arguments provided by the client, command line arguments specified at publish time, or no command line arguments at all.
  /// [description] Description of Application.
  /// [filePath] Specifies a path for the executable file for the application.
  /// [friendlyName] Friendly name of Application.
  /// [iconContent] the icon a 64 bit string as a byte array.
  /// [iconHash] Hash of the icon.
  /// [iconIndex] Index of the icon.
  /// [iconPath] Path to icon.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [msixPackageApplicationId] Specifies the package application Id for MSIX applications
  /// [msixPackageFamilyName] Specifies the package family name for MSIX applications
  /// [name] The name of the resource
  /// [objectId] ObjectId of Application. (internal use)
  /// [showInPortal] Specifies whether to show the RemoteApp program in the RD Web Access server.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetApplicationResult({
    this.applicationType,
    this.azureApiVersion,
    this.commandLineArguments,
    this.commandLineSetting,
    this.description,
    this.filePath,
    this.friendlyName,
    this.iconContent,
    this.iconHash,
    this.iconIndex,
    this.iconPath,
    this.id,
    this.msixPackageApplicationId,
    this.msixPackageFamilyName,
    this.name,
    this.objectId,
    this.showInPortal,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationType': ?applicationType,
      'azureApiVersion': ?azureApiVersion,
      'commandLineArguments': ?commandLineArguments,
      'commandLineSetting': ?commandLineSetting,
      'description': ?description,
      'filePath': ?filePath,
      'friendlyName': ?friendlyName,
      'iconContent': ?iconContent,
      'iconHash': ?iconHash,
      'iconIndex': ?iconIndex,
      'iconPath': ?iconPath,
      'id': ?id,
      'msixPackageApplicationId': ?msixPackageApplicationId,
      'msixPackageFamilyName': ?msixPackageFamilyName,
      'name': ?name,
      'objectId': ?objectId,
      'showInPortal': ?showInPortal,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      applicationType: (() { final guardedValue = map['applicationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      commandLineArguments: (() { final guardedValue = map['commandLineArguments']; if (guardedValue == null) return null; return guardedValue as String; })(),
      commandLineSetting: (() { final guardedValue = map['commandLineSetting']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filePath: (() { final guardedValue = map['filePath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iconContent: (() { final guardedValue = map['iconContent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iconHash: (() { final guardedValue = map['iconHash']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iconIndex: (() { final guardedValue = map['iconIndex']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      iconPath: (() { final guardedValue = map['iconPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      msixPackageApplicationId: (() { final guardedValue = map['msixPackageApplicationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      msixPackageFamilyName: (() { final guardedValue = map['msixPackageFamilyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      showInPortal: (() { final guardedValue = map['showInPortal']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
