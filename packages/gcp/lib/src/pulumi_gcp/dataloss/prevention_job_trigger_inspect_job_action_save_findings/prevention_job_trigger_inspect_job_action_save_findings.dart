// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_job_trigger_inspect_job_action_save_findings_output_config/prevention_job_trigger_inspect_job_action_save_findings_output_config.dart';

class PreventionJobTriggerInspectJobActionSaveFindings {
  /// Information on where to store output
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobActionSaveFindingsOutputConfig
      outputConfig;

  PreventionJobTriggerInspectJobActionSaveFindings({
    required this.outputConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['outputConfig'] = outputConfig.toMap();
    return map;
  }

  factory PreventionJobTriggerInspectJobActionSaveFindings.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobActionSaveFindings(
      outputConfig:
          PreventionJobTriggerInspectJobActionSaveFindingsOutputConfig.fromMap(
              (map['outputConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
