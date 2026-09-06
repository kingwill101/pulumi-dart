// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_report_mode_type_enum_value_response.dart';
import 'batch_restrictions_response.dart';

/// Definition of ProjectBuildBatchConfig
class ProjectBuildBatchConfigResponse {
  /// &lt;p&gt;Specifies how build status reports are sent to the source provider for the batch build. This property is only used when the source provider for your project is Bitbucket, GitHub, or GitHub Enterprise, and your project is configured to report build statuses to the source provider.&lt;/p&gt; &lt;dl&gt; &lt;dt&gt;REPORT_AGGREGATED_BATCH&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;(Default) Aggregate all of the build statuses into a single status report.&lt;/p&gt; &lt;/dd&gt; &lt;dt&gt;REPORT_INDIVIDUAL_BUILDS&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;Send a separate status report for each individual build.&lt;/p&gt; &lt;/dd&gt; &lt;/dl&gt;
  final pulumi.Input<BatchReportModeTypeEnumValueResponse?>? batchReportMode;
  /// &lt;p&gt;Specifies if the build artifacts for the batch build should be combined into a single artifact location.&lt;/p&gt;
  final pulumi.Input<bool?>? combineArtifacts;
  /// &lt;p&gt;A &lt;code&gt;BatchRestrictions&lt;/code&gt; object that specifies the restrictions for the batch build.&lt;/p&gt;
  final pulumi.Input<BatchRestrictionsResponse?>? restrictions;
  /// &lt;p&gt;Specifies the service role ARN for the batch build project.&lt;/p&gt;
  final pulumi.Input<String?>? serviceRole;
  /// &lt;p&gt;Specifies the maximum amount of time, in minutes, that the batch build must be completed in.&lt;/p&gt;
  final pulumi.Input<int?>? timeoutInMins;

  /// Creates a new [ProjectBuildBatchConfigResponse].
  /// [batchReportMode] &lt;p&gt;Specifies how build status reports are sent to the source provider for the batch build. This property is only used when the source provider for your project is Bitbucket, GitHub, or GitHub Enterprise, and your project is configured to report build statuses to the source provider.&lt;/p&gt; &lt;dl&gt; &lt;dt&gt;REPORT_AGGREGATED_BATCH&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;(Default) Aggregate all of the build statuses into a single status report.&lt;/p&gt; &lt;/dd&gt; &lt;dt&gt;REPORT_INDIVIDUAL_BUILDS&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;Send a separate status report for each individual build.&lt;/p&gt; &lt;/dd&gt; &lt;/dl&gt;
  /// [combineArtifacts] &lt;p&gt;Specifies if the build artifacts for the batch build should be combined into a single artifact location.&lt;/p&gt;
  /// [restrictions] &lt;p&gt;A &lt;code&gt;BatchRestrictions&lt;/code&gt; object that specifies the restrictions for the batch build.&lt;/p&gt;
  /// [serviceRole] &lt;p&gt;Specifies the service role ARN for the batch build project.&lt;/p&gt;
  /// [timeoutInMins] &lt;p&gt;Specifies the maximum amount of time, in minutes, that the batch build must be completed in.&lt;/p&gt;
  const ProjectBuildBatchConfigResponse({
    this.batchReportMode,
    this.combineArtifacts,
    this.restrictions,
    this.serviceRole,
    this.timeoutInMins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchReportMode': ?pulumi.Input.mapOptionalInputValue<BatchReportModeTypeEnumValueResponse, Map<String, dynamic>>(batchReportMode, (value) => value.toMap()),
      'combineArtifacts': ?combineArtifacts,
      'restrictions': ?pulumi.Input.mapOptionalInputValue<BatchRestrictionsResponse, Map<String, dynamic>>(restrictions, (value) => value.toMap()),
      'serviceRole': ?serviceRole,
      'timeoutInMins': ?timeoutInMins,
    };
  }

  factory ProjectBuildBatchConfigResponse.fromMap(Map<String, dynamic> map) {
    return ProjectBuildBatchConfigResponse(
      batchReportMode: (() { final guardedValue = map['batchReportMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchReportModeTypeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      combineArtifacts: (() { final guardedValue = map['combineArtifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      restrictions: (() { final guardedValue = map['restrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchRestrictionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceRole: (() { final guardedValue = map['serviceRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeoutInMins: (() { final guardedValue = map['timeoutInMins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
