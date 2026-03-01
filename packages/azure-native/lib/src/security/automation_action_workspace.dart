// ignore_for_file: unused_element, unnecessary_cast


/// The Log Analytics Workspace to which event data will be exported. Security alerts data will reside in the 'SecurityAlert' table and the assessments data will reside in the 'SecurityRecommendation' table (under the 'Security'/'SecurityCenterFree' solutions). Note that in order to view the data in the workspace, the Security Center Log Analytics free/standard solution needs to be enabled on that workspace. To learn more about Microsoft Defender for Cloud continuous export capabilities, visit https://aka.ms/ASCExportLearnMore
class AutomationActionWorkspace {
  /// The type of the action that will be triggered by the Automation
  /// Expected value is 'Workspace'.
  final String actionType;
  /// The fully qualified Log Analytics Workspace Azure Resource ID.
  final String? workspaceResourceId;

  /// Creates a new [AutomationActionWorkspace].
  /// [actionType] The type of the action that will be triggered by the Automation
  /// [workspaceResourceId] The fully qualified Log Analytics Workspace Azure Resource ID.
  AutomationActionWorkspace({
    required this.actionType,
    this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory AutomationActionWorkspace.fromMap(Map<String, dynamic> map) {
    return AutomationActionWorkspace(
      actionType: map['actionType'] as String,
      workspaceResourceId: map['workspaceResourceId'] == null ? null : map['workspaceResourceId'] as String,
    );
  }
}

