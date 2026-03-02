// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'last_run_error_status_code_enum_value.dart';

/// Definition of LastRunErrorStatus
class LastRunErrorStatus {
  /// <p>Specifies whether any account- or bucket-level access errors occurred when the job ran. For a recurring job, this value indicates the error status of the job's most recent run. Possible values are:</p> <ul><li><p>ERROR - One or more errors occurred. Amazon Macie didn't process all the data specified for the job.</p></li> <li><p>NONE - No errors occurred. Macie processed all the data specified for the job.</p></li></ul>
  final pulumi.Input<LastRunErrorStatusCodeEnumValue>? code;

  /// Creates a new [LastRunErrorStatus].
  /// [code] <p>Specifies whether any account- or bucket-level access errors occurred when the job ran. For a recurring job, this value indicates the error status of the job's most recent run. Possible values are:</p> <ul><li><p>ERROR - One or more errors occurred. Amazon Macie didn't process all the data specified for the job.</p></li> <li><p>NONE - No errors occurred. Macie processed all the data specified for the job.</p></li></ul>
  LastRunErrorStatus({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?pulumi.Input.mapOptionalInputValue<LastRunErrorStatusCodeEnumValue, Map<String, dynamic>>(code, (value) => value.toMap()),
    };
  }

  factory LastRunErrorStatus.fromMap(Map<String, dynamic> map) {
    return LastRunErrorStatus(
      code: map['code'] == null ? null : (LastRunErrorStatusCodeEnumValue.fromMap((map['code'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

