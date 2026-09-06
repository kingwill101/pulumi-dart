// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amd_sev_snp_specification_enum_value.dart';

/// Definition of CpuOptions
class CpuOptions {
  /// &lt;p&gt;Indicates whether the instance is enabled for AMD SEV-SNP. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sev-snp.html'&gt;AMD SEV-SNP&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<AmdSevSnpSpecificationEnumValue?>? amdSevSnp;
  /// &lt;p&gt;The number of CPU cores for the instance.&lt;/p&gt;
  final pulumi.Input<int?>? coreCount;
  /// &lt;p&gt;The number of threads per CPU core.&lt;/p&gt;
  final pulumi.Input<int?>? threadsPerCore;

  /// Creates a new [CpuOptions].
  /// [amdSevSnp] &lt;p&gt;Indicates whether the instance is enabled for AMD SEV-SNP. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sev-snp.html'&gt;AMD SEV-SNP&lt;/a&gt;.&lt;/p&gt;
  /// [coreCount] &lt;p&gt;The number of CPU cores for the instance.&lt;/p&gt;
  /// [threadsPerCore] &lt;p&gt;The number of threads per CPU core.&lt;/p&gt;
  const CpuOptions({
    this.amdSevSnp,
    this.coreCount,
    this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amdSevSnp': ?pulumi.Input.mapOptionalInputValue<AmdSevSnpSpecificationEnumValue, Map<String, dynamic>>(amdSevSnp, (value) => value.toMap()),
      'coreCount': ?coreCount,
      'threadsPerCore': ?threadsPerCore,
    };
  }

  factory CpuOptions.fromMap(Map<String, dynamic> map) {
    return CpuOptions(
      amdSevSnp: (() { final guardedValue = map['amdSevSnp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AmdSevSnpSpecificationEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      coreCount: (() { final guardedValue = map['coreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      threadsPerCore: (() { final guardedValue = map['threadsPerCore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
