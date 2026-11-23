import 'package:pulumi/pulumi.dart' as pulumi;

enum CpuArchitecture implements pulumi.PulumiEnum<String> {
  x8664("X86_64"),
  aRM64("ARM64");

  const CpuArchitecture(this.wireValue);
  @override
  final String wireValue;

  static CpuArchitecture fromValue(String value) {
    for (final item in CpuArchitecture.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CpuArchitecture value: $value');
  }
}
