// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'last_run_error_status_code_enum_value.dart';

/// Definition of LastRunErrorStatus
class LastRunErrorStatus {
  /// &lt;p&gt;Specifies whether any account- or bucket-level access errors occurred when the job ran. For a recurring job, this value indicates the error status of the job's most recent run. Possible values are:&lt;/p&gt; &lt;ul&gt;&lt;li&gt;&lt;p&gt;ERROR - One or more errors occurred. Amazon Macie didn't process all the data specified for the job.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;NONE - No errors occurred. Macie processed all the data specified for the job.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;
  final pulumi.Input<LastRunErrorStatusCodeEnumValue>? code;

  /// Creates a new [LastRunErrorStatus].
  /// [code] &lt;p&gt;Specifies whether any account- or bucket-level access errors occurred when the job ran. For a recurring job, this value indicates the error status of the job's most recent run. Possible values are:&lt;/p&gt; &lt;ul&gt;&lt;li&gt;&lt;p&gt;ERROR - One or more errors occurred. Amazon Macie didn't process all the data specified for the job.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;NONE - No errors occurred. Macie processed all the data specified for the job.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;
  const LastRunErrorStatus({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?pulumi.Input.mapOptionalInputValue<LastRunErrorStatusCodeEnumValue, Map<String, dynamic>>(code, (value) => value.toMap()),
    };
  }

  factory LastRunErrorStatus.fromMap(Map<String, dynamic> map) {
    return LastRunErrorStatus(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LastRunErrorStatusCodeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
