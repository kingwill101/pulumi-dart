// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recording_group_response.dart';
import 'recording_mode_response.dart';

/// Definition of awsConfigServiceConfigurationRecorder
class AwsConfigServiceConfigurationRecorderPropertiesResponse {
  /// <p>The name of the configuration recorder. Config automatically assigns the name of 'default' when creating the configuration recorder.</p> <note> <p>You cannot change the name of the configuration recorder after it has been created. To change the configuration recorder name, you must delete it and create a new configuration recorder with a new name. </p> </note>
  final pulumi.Input<String>? name;
  /// <p>Specifies which resource types Config records for configuration changes.</p> <note> <p> <b> High Number of Config Evaluations</b> </p> <p>You may notice increased activity in your account during your initial month recording with Config when compared to subsequent months. During the initial bootstrapping process, Config runs evaluations on all the resources in your account that you have selected for Config to record.</p> <p>If you are running ephemeral workloads, you may see increased activity from Config as it records configuration changes associated with creating and deleting these temporary resources. An <i>ephemeral workload</i> is a temporary use of computing resources that are loaded and run when needed. Examples include Amazon Elastic Compute Cloud (Amazon EC2) Spot Instances, Amazon EMR jobs, and Auto Scaling. If you want to avoid the increased activity from running ephemeral workloads, you can run these types of workloads in a separate account with Config turned off to avoid increased configuration recording and rule evaluations.</p> </note>
  final pulumi.Input<RecordingGroupResponse>? recordingGroup;
  /// <p>Specifies the default recording frequency that Config uses to record configuration changes. Config supports <i>Continuous recording</i> and <i>Daily recording</i>.</p> <ul> <li> <p>Continuous recording allows you to record configuration changes continuously whenever a change occurs.</p> </li> <li> <p>Daily recording allows you to receive a configuration item (CI) representing the most recent state of your resources over the last 24-hour period, only if it’s different from the previous CI recorded. </p> </li> </ul> <note> <p>Firewall Manager depends on continuous recording to monitor your resources. If you are using Firewall Manager, it is recommended that you set the recording frequency to Continuous.</p> </note> <p>You can also override the recording frequency for specific resource types.</p>
  final pulumi.Input<RecordingModeResponse>? recordingMode;
  /// <p>Amazon Resource Name (ARN) of the IAM role assumed by Config and used by the configuration recorder.</p> <note> <p>While the API model does not require this field, the server will reject a request without a defined <code>roleARN</code> for the configuration recorder.</p> </note> <note> <p> <b>Pre-existing Config role</b> </p> <p>If you have used an Amazon Web Services service that uses Config, such as Security Hub or Control Tower, and an Config role has already been created, make sure that the IAM role that you use when setting up Config keeps the same minimum permissions as the already created Config role. You must do this so that the other Amazon Web Services service continues to run as expected. </p> <p>For example, if Control Tower has an IAM role that allows Config to read Amazon Simple Storage Service (Amazon S3) objects, make sure that the same permissions are granted within the IAM role you use when setting up Config. Otherwise, it may interfere with how Control Tower operates. For more information about IAM roles for Config, see <a href='https://docs.aws.amazon.com/config/latest/developerguide/security-iam.html'> <b>Identity and Access Management for Config</b> </a> in the <i>Config Developer Guide</i>. </p> </note>
  final pulumi.Input<String>? roleARN;

  /// Creates a new [AwsConfigServiceConfigurationRecorderPropertiesResponse].
  /// [name] <p>The name of the configuration recorder. Config automatically assigns the name of 'default' when creating the configuration recorder.</p> <note> <p>You cannot change the name of the configuration recorder after it has been created. To change the configuration recorder name, you must delete it and create a new configuration recorder with a new name. </p> </note>
  /// [recordingGroup] <p>Specifies which resource types Config records for configuration changes.</p> <note> <p> <b> High Number of Config Evaluations</b> </p> <p>You may notice increased activity in your account during your initial month recording with Config when compared to subsequent months. During the initial bootstrapping process, Config runs evaluations on all the resources in your account that you have selected for Config to record.</p> <p>If you are running ephemeral workloads, you may see increased activity from Config as it records configuration changes associated with creating and deleting these temporary resources. An <i>ephemeral workload</i> is a temporary use of computing resources that are loaded and run when needed. Examples include Amazon Elastic Compute Cloud (Amazon EC2) Spot Instances, Amazon EMR jobs, and Auto Scaling. If you want to avoid the increased activity from running ephemeral workloads, you can run these types of workloads in a separate account with Config turned off to avoid increased configuration recording and rule evaluations.</p> </note>
  /// [recordingMode] <p>Specifies the default recording frequency that Config uses to record configuration changes. Config supports <i>Continuous recording</i> and <i>Daily recording</i>.</p> <ul> <li> <p>Continuous recording allows you to record configuration changes continuously whenever a change occurs.</p> </li> <li> <p>Daily recording allows you to receive a configuration item (CI) representing the most recent state of your resources over the last 24-hour period, only if it’s different from the previous CI recorded. </p> </li> </ul> <note> <p>Firewall Manager depends on continuous recording to monitor your resources. If you are using Firewall Manager, it is recommended that you set the recording frequency to Continuous.</p> </note> <p>You can also override the recording frequency for specific resource types.</p>
  /// [roleARN] <p>Amazon Resource Name (ARN) of the IAM role assumed by Config and used by the configuration recorder.</p> <note> <p>While the API model does not require this field, the server will reject a request without a defined <code>roleARN</code> for the configuration recorder.</p> </note> <note> <p> <b>Pre-existing Config role</b> </p> <p>If you have used an Amazon Web Services service that uses Config, such as Security Hub or Control Tower, and an Config role has already been created, make sure that the IAM role that you use when setting up Config keeps the same minimum permissions as the already created Config role. You must do this so that the other Amazon Web Services service continues to run as expected. </p> <p>For example, if Control Tower has an IAM role that allows Config to read Amazon Simple Storage Service (Amazon S3) objects, make sure that the same permissions are granted within the IAM role you use when setting up Config. Otherwise, it may interfere with how Control Tower operates. For more information about IAM roles for Config, see <a href='https://docs.aws.amazon.com/config/latest/developerguide/security-iam.html'> <b>Identity and Access Management for Config</b> </a> in the <i>Config Developer Guide</i>. </p> </note>
  AwsConfigServiceConfigurationRecorderPropertiesResponse({
    this.name,
    this.recordingGroup,
    this.recordingMode,
    this.roleARN,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'recordingGroup': ?pulumi.Input.mapOptionalInputValue<RecordingGroupResponse, Map<String, dynamic>>(recordingGroup, (value) => value.toMap()),
      'recordingMode': ?pulumi.Input.mapOptionalInputValue<RecordingModeResponse, Map<String, dynamic>>(recordingMode, (value) => value.toMap()),
      'roleARN': ?roleARN,
    };
  }

  factory AwsConfigServiceConfigurationRecorderPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsConfigServiceConfigurationRecorderPropertiesResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      recordingGroup: map['recordingGroup'] == null ? null : (RecordingGroupResponse.fromMap((map['recordingGroup'] as Map).cast<String, dynamic>())).input(),
      recordingMode: map['recordingMode'] == null ? null : (RecordingModeResponse.fromMap((map['recordingMode'] as Map).cast<String, dynamic>())).input(),
      roleARN: map['roleARN'] == null ? null : (map['roleARN'] as String).input(),
    );
  }
}

