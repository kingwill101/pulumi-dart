// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_importexport_list_bit_locker_key_args_doc}
/// Arguments for listBitLockerKey.
/// {@endtemplate}
/// {@macro pulumi_importexport_list_bit_locker_key_args_doc}
class ListBitLockerKeyArgs {
  /// The name of the import/export job.
  final pulumi.Input<String> jobName;
  /// The resource group name uniquely identifies the resource group within the user subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListBitLockerKeyArgs].
  /// [jobName] The name of the import/export job.
  /// [resourceGroupName] The resource group name uniquely identifies the resource group within the user subscription.
  ListBitLockerKeyArgs({
    required this.jobName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobName': jobName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListBitLockerKeyArgs.fromMap(Map<String, dynamic> map) {
    return ListBitLockerKeyArgs(
      jobName: (map['jobName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

