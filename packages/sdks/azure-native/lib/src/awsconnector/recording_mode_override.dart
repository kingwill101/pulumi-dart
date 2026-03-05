// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recording_frequency_enum_value.dart';

/// Definition of RecordingModeOverride
class RecordingModeOverride {
  /// &lt;p&gt;A description that you provide for the override.&lt;/p&gt;
  final pulumi.Input<String>? description;
  /// &lt;p&gt;The recording frequency that will be applied to all the resource types specified in the override.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Continuous recording allows you to record configuration changes continuously whenever a change occurs.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Daily recording allows you to receive a configuration item (CI) representing the most recent state of your resources over the last 24-hour period, only if it’s different from the previous CI recorded. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;note&gt; &lt;p&gt;Firewall Manager depends on continuous recording to monitor your resources. If you are using Firewall Manager, it is recommended that you set the recording frequency to Continuous.&lt;/p&gt; &lt;/note&gt;
  final pulumi.Input<RecordingFrequencyEnumValue>? recordingFrequency;
  /// &lt;p&gt;A comma-separated list that specifies which resource types Config includes in the override.&lt;/p&gt; &lt;important&gt; &lt;p&gt;Daily recording is not supported for the following resource types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;AWS::Config::ResourceCompliance&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;AWS::Config::ConformancePackCompliance&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;AWS::Config::ConfigurationRecorder&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/important&gt;
  final pulumi.Input<List<String>>? resourceTypes;

  /// Creates a new [RecordingModeOverride].
  /// [description] &lt;p&gt;A description that you provide for the override.&lt;/p&gt;
  /// [recordingFrequency] &lt;p&gt;The recording frequency that will be applied to all the resource types specified in the override.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Continuous recording allows you to record configuration changes continuously whenever a change occurs.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Daily recording allows you to receive a configuration item (CI) representing the most recent state of your resources over the last 24-hour period, only if it’s different from the previous CI recorded. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;note&gt; &lt;p&gt;Firewall Manager depends on continuous recording to monitor your resources. If you are using Firewall Manager, it is recommended that you set the recording frequency to Continuous.&lt;/p&gt; &lt;/note&gt;
  /// [resourceTypes] &lt;p&gt;A comma-separated list that specifies which resource types Config includes in the override.&lt;/p&gt; &lt;important&gt; &lt;p&gt;Daily recording is not supported for the following resource types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;AWS::Config::ResourceCompliance&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;AWS::Config::ConformancePackCompliance&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;AWS::Config::ConfigurationRecorder&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/important&gt;
  RecordingModeOverride({
    this.description,
    this.recordingFrequency,
    this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'recordingFrequency': ?pulumi.Input.mapOptionalInputValue<RecordingFrequencyEnumValue, Map<String, dynamic>>(recordingFrequency, (value) => value.toMap()),
      'resourceTypes': ?resourceTypes,
    };
  }

  factory RecordingModeOverride.fromMap(Map<String, dynamic> map) {
    return RecordingModeOverride(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordingFrequency: (() { final guardedValue = map['recordingFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecordingFrequencyEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

