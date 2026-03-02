// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amd_sev_snp_specification_enum_value_response.dart';

/// Definition of CpuOptions
class CpuOptionsResponse {
  /// <p>Indicates whether the instance is enabled for AMD SEV-SNP. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sev-snp.html'>AMD SEV-SNP</a>.</p>
  final pulumi.Input<AmdSevSnpSpecificationEnumValueResponse>? amdSevSnp;
  /// <p>The number of CPU cores for the instance.</p>
  final pulumi.Input<int>? coreCount;
  /// <p>The number of threads per CPU core.</p>
  final pulumi.Input<int>? threadsPerCore;

  /// Creates a new [CpuOptionsResponse].
  /// [amdSevSnp] <p>Indicates whether the instance is enabled for AMD SEV-SNP. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sev-snp.html'>AMD SEV-SNP</a>.</p>
  /// [coreCount] <p>The number of CPU cores for the instance.</p>
  /// [threadsPerCore] <p>The number of threads per CPU core.</p>
  CpuOptionsResponse({
    this.amdSevSnp,
    this.coreCount,
    this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amdSevSnp': ?pulumi.Input.mapOptionalInputValue<AmdSevSnpSpecificationEnumValueResponse, Map<String, dynamic>>(amdSevSnp, (value) => value.toMap()),
      'coreCount': ?coreCount,
      'threadsPerCore': ?threadsPerCore,
    };
  }

  factory CpuOptionsResponse.fromMap(Map<String, dynamic> map) {
    return CpuOptionsResponse(
      amdSevSnp: map['amdSevSnp'] == null ? null : (AmdSevSnpSpecificationEnumValueResponse.fromMap((map['amdSevSnp']! as Map).cast<String, dynamic>())).input(),
      coreCount: map['coreCount'] == null ? null : (map['coreCount']! as int).input(),
      threadsPerCore: map['threadsPerCore'] == null ? null : (map['threadsPerCore']! as int).input(),
    );
  }
}

