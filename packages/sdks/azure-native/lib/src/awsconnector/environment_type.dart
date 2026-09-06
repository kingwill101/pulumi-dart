import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum EnvironmentType implements pulumi.PulumiEnum<String> {
  aRMCONTAINER("ARM_CONTAINER"),
  aRMLAMBDACONTAINER("ARM_LAMBDA_CONTAINER"),
  lINUXCONTAINER("LINUX_CONTAINER"),
  lINUXGPUCONTAINER("LINUX_GPU_CONTAINER"),
  lINUXLAMBDACONTAINER("LINUX_LAMBDA_CONTAINER"),
  wINDOWSCONTAINER("WINDOWS_CONTAINER"),
  wINDOWSSERVER2019CONTAINER("WINDOWS_SERVER_2019_CONTAINER");

  const EnvironmentType(this.wireValue);
  @override
  final String wireValue;

  static EnvironmentType fromValue(String value) {
    for (final item in EnvironmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentType value: $value');
  }
}
