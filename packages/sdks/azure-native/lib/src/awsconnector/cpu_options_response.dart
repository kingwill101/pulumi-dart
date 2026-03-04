// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amd_sev_snp_specification_enum_value_response.dart';

/// Definition of CpuOptions
class CpuOptionsResponse {
  /// &lt;p&gt;Indicates whether the instance is enabled for AMD SEV-SNP. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sev-snp.html'&gt;AMD SEV-SNP&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<AmdSevSnpSpecificationEnumValueResponse>? amdSevSnp;

  /// &lt;p&gt;The number of CPU cores for the instance.&lt;/p&gt;
  final pulumi.Input<int>? coreCount;

  /// &lt;p&gt;The number of threads per CPU core.&lt;/p&gt;
  final pulumi.Input<int>? threadsPerCore;

  /// Creates a new [CpuOptionsResponse].
  /// [amdSevSnp] &lt;p&gt;Indicates whether the instance is enabled for AMD SEV-SNP. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sev-snp.html'&gt;AMD SEV-SNP&lt;/a&gt;.&lt;/p&gt;
  /// [coreCount] &lt;p&gt;The number of CPU cores for the instance.&lt;/p&gt;
  /// [threadsPerCore] &lt;p&gt;The number of threads per CPU core.&lt;/p&gt;
  CpuOptionsResponse({this.amdSevSnp, this.coreCount, this.threadsPerCore});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amdSevSnp':
          ?pulumi.Input.mapOptionalInputValue<
            AmdSevSnpSpecificationEnumValueResponse,
            Map<String, dynamic>
          >(amdSevSnp, (value) => value.toMap()),
      'coreCount': ?coreCount,
      'threadsPerCore': ?threadsPerCore,
    };
  }

  factory CpuOptionsResponse.fromMap(Map<String, dynamic> map) {
    return CpuOptionsResponse(
      amdSevSnp: (() {
        final guardedValue = map['amdSevSnp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AmdSevSnpSpecificationEnumValueResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      coreCount: (() {
        final guardedValue = map['coreCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      threadsPerCore: (() {
        final guardedValue = map['threadsPerCore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
