// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amd_sev_snp_specification_enum_value.dart';

/// Definition of CpuOptions
class CpuOptions {
  /// <p>Indicates whether the instance is enabled for AMD SEV-SNP. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sev-snp.html'>AMD SEV-SNP</a>.</p>
  final pulumi.Input<AmdSevSnpSpecificationEnumValue>? amdSevSnp;
  /// <p>The number of CPU cores for the instance.</p>
  final pulumi.Input<int>? coreCount;
  /// <p>The number of threads per CPU core.</p>
  final pulumi.Input<int>? threadsPerCore;

  /// Creates a new [CpuOptions].
  /// [amdSevSnp] <p>Indicates whether the instance is enabled for AMD SEV-SNP. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sev-snp.html'>AMD SEV-SNP</a>.</p>
  /// [coreCount] <p>The number of CPU cores for the instance.</p>
  /// [threadsPerCore] <p>The number of threads per CPU core.</p>
  CpuOptions({
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
      amdSevSnp: map['amdSevSnp'] == null ? null : (AmdSevSnpSpecificationEnumValue.fromMap((map['amdSevSnp'] as Map).cast<String, dynamic>())).input(),
      coreCount: map['coreCount'] == null ? null : (map['coreCount'] as int).input(),
      threadsPerCore: map['threadsPerCore'] == null ? null : (map['threadsPerCore'] as int).input(),
    );
  }
}

