import 'package:pulumi/pulumi.dart' as pulumi;

/// coolAccessRetrievalPolicy determines the data retrieval behavior from the cool tier to standard storage based on the read pattern for cool access enabled volumes. The possible values for this field are:
/// Default - Data will be pulled from cool tier to standard storage on random reads. This policy is the default.
/// OnRead - All client-driven data read is pulled from cool tier to standard storage on both sequential and random reads.
/// Never - No client-driven data is pulled from cool tier to standard storage.
enum CoolAccessRetrievalPolicy implements pulumi.PulumiEnum<String> {
  valueDefault("Default"),
  valueOnRead("OnRead"),
  valueNever("Never");

  const CoolAccessRetrievalPolicy(this.wireValue);
  @override
  final String wireValue;

  static CoolAccessRetrievalPolicy fromValue(String value) {
    for (final item in CoolAccessRetrievalPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CoolAccessRetrievalPolicy value: $value');
  }
}
