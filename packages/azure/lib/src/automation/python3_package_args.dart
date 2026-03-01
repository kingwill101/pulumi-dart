// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_python3_package_python3_package_args_doc}
/// The set of arguments for Python3Package.
/// {@endtemplate}
/// {@macro pulumi_automation_python3_package_python3_package_args_doc}
class Python3PackageArgs {
  /// The name of the automation account in which the Python3 Package is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// The URL of the python package. Changing this forces a new Automation Python3 Package to be created.
  final pulumi.Input<String> contentUri;
  /// Specify the version of the python3 package. The value should meet the system.version class format like `1.1.1`. Changing this forces a new Automation Python3 Package to be created.
  final pulumi.Input<String>? contentVersion;
  /// Specify the hash algorithm used to hash the content of the python3 package. Changing this forces a new Automation Python3 Package to be created.
  final pulumi.Input<String>? hashAlgorithm;
  /// Specity the hash value of the content. Changing this forces a new Automation Python3 Package to be created.
  final pulumi.Input<String>? hashValue;
  /// The name which should be used for this Automation Python3 Package. Changing this forces a new Automation Python3 Package to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Python3 Package is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Automation Python3 Package.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [Python3PackageArgs].
  /// [automationAccountName] The name of the automation account in which the Python3 Package is created. Changing this forces a new resource to be created.
  /// [contentUri] The URL of the python package. Changing this forces a new Automation Python3 Package to be created.
  /// [contentVersion] Specify the version of the python3 package. The value should meet the system.version class format like `1.1.1`. Changing this forces a new Automation Python3 Package to be created.
  /// [hashAlgorithm] Specify the hash algorithm used to hash the content of the python3 package. Changing this forces a new Automation Python3 Package to be created.
  /// [hashValue] Specity the hash value of the content. Changing this forces a new Automation Python3 Package to be created.
  /// [name] The name which should be used for this Automation Python3 Package. Changing this forces a new Automation Python3 Package to be created.
  /// [resourceGroupName] The name of the resource group in which the Python3 Package is created. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Automation Python3 Package.
  Python3PackageArgs({
    required String automationAccountName,
    required String contentUri,
    String? contentVersion,
    String? hashAlgorithm,
    String? hashValue,
    String? name,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      contentUri = pulumi.Input.asInput<String>(contentUri),
      contentVersion = pulumi.Input.asOptionalInput<String>(contentVersion),
      hashAlgorithm = pulumi.Input.asOptionalInput<String>(hashAlgorithm),
      hashValue = pulumi.Input.asOptionalInput<String>(hashValue),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'contentUri': contentUri,
      'contentVersion': ?contentVersion,
      'hashAlgorithm': ?hashAlgorithm,
      'hashValue': ?hashValue,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory Python3PackageArgs.fromMap(Map<String, dynamic> map) {
    return Python3PackageArgs(
      automationAccountName: map['automationAccountName'] as String,
      contentUri: map['contentUri'] as String,
      contentVersion: map['contentVersion'] == null ? null : map['contentVersion'] as String,
      hashAlgorithm: map['hashAlgorithm'] == null ? null : map['hashAlgorithm'] as String,
      hashValue: map['hashValue'] == null ? null : map['hashValue'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

