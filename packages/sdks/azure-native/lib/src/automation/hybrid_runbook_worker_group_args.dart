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
    required pulumi.Output<String> automationAccountName,
    pulumi.Output<RunAsCredentialAssociationProperty>? credential,
    pulumi.Output<String>? hybridRunbookWorkerGroupName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      credential = pulumi.Input.asOptionalInput<RunAsCredentialAssociationProperty>(credential),
      hybridRunbookWorkerGroupName = pulumi.Input.asOptionalInput<String>(hybridRunbookWorkerGroupName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      credential: map['credential'] == null ? null : pulumi.Output.create<RunAsCredentialAssociationProperty>(RunAsCredentialAssociationProperty.fromMap((map['credential'] as Map).cast<String, dynamic>())),
      hybridRunbookWorkerGroupName: map['hybridRunbookWorkerGroupName'] == null ? null : pulumi.Output.create<String>(map['hybridRunbookWorkerGroupName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

