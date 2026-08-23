// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_application_args_doc}
class ApplicationArgs {
  /// The name of the application group
  final pulumi.Input<String> applicationGroupName;
  /// The name of the application within the specified application group
  final pulumi.Input<String>? applicationName;
  /// Resource Type of Application.
  final pulumi.Input<String>? applicationType;
  /// Command Line Arguments for Application.
  final pulumi.Input<String>? commandLineArguments;
  /// Specifies whether this published application can be launched with command line arguments provided by the client, command line arguments specified at publish time, or no command line arguments at all.
  final pulumi.Input<String> commandLineSetting;
  /// Description of Application.
  final pulumi.Input<String>? description;
  /// Specifies a path for the executable file for the application.
  final pulumi.Input<String>? filePath;
  /// Friendly name of Application.
  final pulumi.Input<String>? friendlyName;
  /// Index of the icon.
  final pulumi.Input<int>? iconIndex;
  /// Path to icon.
  final pulumi.Input<String>? iconPath;
  /// Specifies the package application Id for MSIX applications
  final pulumi.Input<String>? msixPackageApplicationId;
  /// Specifies the package family name for MSIX applications
  final pulumi.Input<String>? msixPackageFamilyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies whether to show the RemoteApp program in the RD Web Access server.
  final pulumi.Input<bool>? showInPortal;

  /// Creates a new [ApplicationArgs].
  /// [applicationGroupName] The name of the application group
  /// [applicationName] The name of the application within the specified application group
  /// [applicationType] Resource Type of Application.
  /// [commandLineArguments] Command Line Arguments for Application.
  /// [commandLineSetting] Specifies whether this published application can be launched with command line arguments provided by the client, command line arguments specified at publish time, or no command line arguments at all.
  /// [description] Description of Application.
  /// [filePath] Specifies a path for the executable file for the application.
  /// [friendlyName] Friendly name of Application.
  /// [iconIndex] Index of the icon.
  /// [iconPath] Path to icon.
  /// [msixPackageApplicationId] Specifies the package application Id for MSIX applications
  /// [msixPackageFamilyName] Specifies the package family name for MSIX applications
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [showInPortal] Specifies whether to show the RemoteApp program in the RD Web Access server.
  const ApplicationArgs({
    required this.applicationGroupName,
    this.applicationName,
    this.applicationType,
    this.commandLineArguments,
    required this.commandLineSetting,
    this.description,
    this.filePath,
    this.friendlyName,
    this.iconIndex,
    this.iconPath,
    this.msixPackageApplicationId,
    this.msixPackageFamilyName,
    required this.resourceGroupName,
    this.showInPortal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGroupName': applicationGroupName,
      'applicationName': ?applicationName,
      'applicationType': ?applicationType,
      'commandLineArguments': ?commandLineArguments,
      'commandLineSetting': commandLineSetting,
      'description': ?description,
      'filePath': ?filePath,
      'friendlyName': ?friendlyName,
      'iconIndex': ?iconIndex,
      'iconPath': ?iconPath,
      'msixPackageApplicationId': ?msixPackageApplicationId,
      'msixPackageFamilyName': ?msixPackageFamilyName,
      'resourceGroupName': resourceGroupName,
      'showInPortal': ?showInPortal,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      applicationGroupName: pulumi.Input.fromValue(map['applicationGroupName'] as String),
      applicationName: (() { final guardedValue = map['applicationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationType: (() { final guardedValue = map['applicationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commandLineArguments: (() { final guardedValue = map['commandLineArguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commandLineSetting: pulumi.Input.fromValue(map['commandLineSetting'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filePath: (() { final guardedValue = map['filePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iconIndex: (() { final guardedValue = map['iconIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      iconPath: (() { final guardedValue = map['iconPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      msixPackageApplicationId: (() { final guardedValue = map['msixPackageApplicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      msixPackageFamilyName: (() { final guardedValue = map['msixPackageFamilyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      showInPortal: (() { final guardedValue = map['showInPortal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
