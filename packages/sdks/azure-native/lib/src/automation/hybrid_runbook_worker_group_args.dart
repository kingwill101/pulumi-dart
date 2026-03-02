// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_as_credential_association_property.dart';

/// {@template pulumi_automation_hybrid_runbook_worker_group_args_doc}
/// The set of arguments for HybridRunbookWorkerGroup.
/// {@endtemplate}
/// {@macro pulumi_automation_hybrid_runbook_worker_group_args_doc}
class HybridRunbookWorkerGroupArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Sets the credential of a worker group.
  final pulumi.Input<RunAsCredentialAssociationProperty>? credential;
  /// The hybrid runbook worker group name
  final pulumi.Input<String>? hybridRunbookWorkerGroupName;
  /// Gets or sets the name of the resource.
  final pulumi.Input<String>? name;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [HybridRunbookWorkerGroupArgs].
  /// [automationAccountName] The name of the automation account.
  /// [credential] Sets the credential of a worker group.
  /// [hybridRunbookWorkerGroupName] The hybrid runbook worker group name
  /// [name] Gets or sets the name of the resource.
  /// [resourceGroupName] Name of an Azure Resource group.
  HybridRunbookWorkerGroupArgs({
    required this.automationAccountName,
    this.credential,
    this.hybridRunbookWorkerGroupName,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'credential': ?pulumi.Input.mapOptionalInputValue<RunAsCredentialAssociationProperty, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'hybridRunbookWorkerGroupName': ?hybridRunbookWorkerGroupName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory HybridRunbookWorkerGroupArgs.fromMap(Map<String, dynamic> map) {
    return HybridRunbookWorkerGroupArgs(
      automationAccountName: (map['automationAccountName'] as String).input(),
      credential: map['credential'] == null ? null : (RunAsCredentialAssociationProperty.fromMap((map['credential']! as Map).cast<String, dynamic>())).input(),
      hybridRunbookWorkerGroupName: map['hybridRunbookWorkerGroupName'] == null ? null : (map['hybridRunbookWorkerGroupName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

