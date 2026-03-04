/// Specifies the log group class for this log group. There are two classes:  +  The ``Standard`` log class supports all CWL features.  +  The ``Infrequent Access`` log class supports a subset of CWL features and incurs lower costs.   For details about the features supported by each class, see [Log classes](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch_Logs_Log_Classes.html)
enum LogGroupClass {
  iNFREQUENTACCESS("INFREQUENT_ACCESS"),
  sTANDARD("STANDARD");

  const LogGroupClass(this.wireValue);
  final String wireValue;

  static LogGroupClass fromValue(String value) {
    for (final item in LogGroupClass.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogGroupClass value: $value');
  }
}
