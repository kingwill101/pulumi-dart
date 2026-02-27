import 'package:pulumi/pulumi.dart';
import '../workspace_configuration_limits_per_label_set/workspace_configuration_limits_per_label_set.dart';
import '../workspace_configuration_timeouts/workspace_configuration_timeouts.dart';
import 'workspace_configuration_args.dart';

/// Manages an AWS Managed Service for Prometheus Workspace Configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Setting up default bucket
///
/// The default bucket limit is the maximum number of active time series that can be
/// ingested in the workspace, counting only time series that don’t match a defined
/// label set.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AMP (Managed Prometheus) Workspace Configuration using the `workspace_id`. For example
///
/// ```sh
/// $ pulumi import aws:amp/workspaceConfiguration:WorkspaceConfiguration example ws-12345678-abcd-1234-abcd-123456789012
/// ```
class WorkspaceConfiguration extends CustomResource {
  /// Configuration block for setting limits on metrics with specific label sets. Detailed below.
  late final Output<List<WorkspaceConfigurationLimitsPerLabelSet>?>
      limitsPerLabelSets;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Number of days to retain metric data in the workspace.
  late final Output<int> retentionPeriodInDays;
  late final Output<WorkspaceConfigurationTimeouts?> timeouts;

  /// ID of the workspace to configure.
  ///
  /// The following arguments are optional:
  late final Output<String> workspaceId;

  WorkspaceConfiguration(
    String name, {
    WorkspaceConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:amp/workspaceConfiguration:WorkspaceConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.limitsPerLabelSets =
        registerOutput<List<WorkspaceConfigurationLimitsPerLabelSet>?>(
            'limitsPerLabelSets');
    this.region = registerOutput<String>('region');
    this.retentionPeriodInDays = registerOutput<int>('retentionPeriodInDays');
    this.timeouts = registerOutput<WorkspaceConfigurationTimeouts?>('timeouts');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
