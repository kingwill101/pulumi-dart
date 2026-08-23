// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recording_frequency_enum_value.dart';
import 'recording_mode_override.dart';

/// Definition of RecordingMode
class RecordingMode {
  /// &lt;p&gt;The default recording frequency that Config uses to record configuration changes.&lt;/p&gt; &lt;important&gt; &lt;p&gt;Daily recording is not supported for the following resource types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;AWS::Config::ResourceCompliance&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;AWS::Config::ConformancePackCompliance&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;AWS::Config::ConfigurationRecorder&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For the &lt;b&gt;allSupported&lt;/b&gt; (&lt;code&gt;ALL_SUPPORTED_RESOURCE_TYPES&lt;/code&gt;) recording strategy, these resource types will be set to Continuous recording.&lt;/p&gt; &lt;/important&gt;
  final pulumi.Input<RecordingFrequencyEnumValue>? recordingFrequency;
  /// &lt;p&gt;An array of &lt;code&gt;recordingModeOverride&lt;/code&gt; objects for you to specify your overrides for the recording mode. The &lt;code&gt;recordingModeOverride&lt;/code&gt; object in the &lt;code&gt;recordingModeOverrides&lt;/code&gt; array consists of three fields: a &lt;code&gt;description&lt;/code&gt;, the new &lt;code&gt;recordingFrequency&lt;/code&gt;, and an array of &lt;code&gt;resourceTypes&lt;/code&gt; to override.&lt;/p&gt;
  final pulumi.Input<List<RecordingModeOverride>>? recordingModeOverrides;

  /// Creates a new [RecordingMode].
  /// [recordingFrequency] &lt;p&gt;The default recording frequency that Config uses to record configuration changes.&lt;/p&gt; &lt;important&gt; &lt;p&gt;Daily recording is not supported for the following resource types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;AWS::Config::ResourceCompliance&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;AWS::Config::ConformancePackCompliance&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;AWS::Config::ConfigurationRecorder&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For the &lt;b&gt;allSupported&lt;/b&gt; (&lt;code&gt;ALL_SUPPORTED_RESOURCE_TYPES&lt;/code&gt;) recording strategy, these resource types will be set to Continuous recording.&lt;/p&gt; &lt;/important&gt;
  /// [recordingModeOverrides] &lt;p&gt;An array of &lt;code&gt;recordingModeOverride&lt;/code&gt; objects for you to specify your overrides for the recording mode. The &lt;code&gt;recordingModeOverride&lt;/code&gt; object in the &lt;code&gt;recordingModeOverrides&lt;/code&gt; array consists of three fields: a &lt;code&gt;description&lt;/code&gt;, the new &lt;code&gt;recordingFrequency&lt;/code&gt;, and an array of &lt;code&gt;resourceTypes&lt;/code&gt; to override.&lt;/p&gt;
  const RecordingMode({
    this.recordingFrequency,
    this.recordingModeOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordingFrequency': ?pulumi.Input.mapOptionalInputValue<RecordingFrequencyEnumValue, Map<String, dynamic>>(recordingFrequency, (value) => value.toMap()),
      'recordingModeOverrides': ?pulumi.Input.mapOptionalInputValue<List<RecordingModeOverride>, List<Map<String, dynamic>>>(recordingModeOverrides, (value) => pulumi.Input.encodeList<RecordingModeOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RecordingMode.fromMap(Map<String, dynamic> map) {
    return RecordingMode(
      recordingFrequency: (() { final guardedValue = map['recordingFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecordingFrequencyEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recordingModeOverrides: (() { final guardedValue = map['recordingModeOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecordingModeOverride>(guardedValue, (value) => RecordingModeOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
