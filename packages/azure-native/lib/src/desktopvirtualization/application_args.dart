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
  ApplicationArgs({
    required String applicationGroupName,
    String? applicationName,
    String? applicationType,
    String? commandLineArguments,
    required String commandLineSetting,
    String? description,
    String? filePath,
    String? friendlyName,
    int? iconIndex,
    String? iconPath,
    String? msixPackageApplicationId,
    String? msixPackageFamilyName,
    required String resourceGroupName,
    bool? showInPortal,
  }) :
      applicationGroupName = pulumi.Input.asInput<String>(applicationGroupName),
      applicationName = pulumi.Input.asOptionalInput<String>(applicationName),
      applicationType = pulumi.Input.asOptionalInput<String>(applicationType),
      commandLineArguments = pulumi.Input.asOptionalInput<String>(commandLineArguments),
      commandLineSetting = pulumi.Input.asInput<String>(commandLineSetting),
      description = pulumi.Input.asOptionalInput<String>(description),
      filePath = pulumi.Input.asOptionalInput<String>(filePath),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      iconIndex = pulumi.Input.asOptionalInput<int>(iconIndex),
      iconPath = pulumi.Input.asOptionalInput<String>(iconPath),
      msixPackageApplicationId = pulumi.Input.asOptionalInput<String>(msixPackageApplicationId),
      msixPackageFamilyName = pulumi.Input.asOptionalInput<String>(msixPackageFamilyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      showInPortal = pulumi.Input.asOptionalInput<bool>(showInPortal);

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
      applicationGroupName: map['applicationGroupName'] as String,
      applicationName: map['applicationName'] == null ? null : map['applicationName'] as String,
      applicationType: map['applicationType'] == null ? null : map['applicationType'] as String,
      commandLineArguments: map['commandLineArguments'] == null ? null : map['commandLineArguments'] as String,
      commandLineSetting: map['commandLineSetting'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      filePath: map['filePath'] == null ? null : map['filePath'] as String,
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      iconIndex: map['iconIndex'] == null ? null : map['iconIndex'] as int,
      iconPath: map['iconPath'] == null ? null : map['iconPath'] as String,
      msixPackageApplicationId: map['msixPackageApplicationId'] == null ? null : map['msixPackageApplicationId'] as String,
      msixPackageFamilyName: map['msixPackageFamilyName'] == null ? null : map['msixPackageFamilyName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      showInPortal: map['showInPortal'] == null ? null : map['showInPortal'] as bool,
    );
  }
}

