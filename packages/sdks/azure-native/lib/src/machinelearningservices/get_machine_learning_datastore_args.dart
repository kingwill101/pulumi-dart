// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_machine_learning_datastore_args_doc}
/// Arguments for getMachineLearningDatastore.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_machine_learning_datastore_args_doc}
class GetMachineLearningDatastoreArgs {
  /// The Datastore name.
  final pulumi.Input<String> datastoreName;
  /// Name of the resource group in which workspace is located.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetMachineLearningDatastoreArgs].
  /// [datastoreName] The Datastore name.
  /// [resourceGroupName] Name of the resource group in which workspace is located.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  GetMachineLearningDatastoreArgs({
    required this.datastoreName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastoreName': datastoreName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetMachineLearningDatastoreArgs.fromMap(Map<String, dynamic> map) {
    return GetMachineLearningDatastoreArgs(
      datastoreName: (map['datastoreName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

