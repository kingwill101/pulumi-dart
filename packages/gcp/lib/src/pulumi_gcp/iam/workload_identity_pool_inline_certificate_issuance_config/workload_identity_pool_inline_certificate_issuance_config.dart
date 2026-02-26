// ignore_for_file: unused_element, unnecessary_cast

class WorkloadIdentityPoolInlineCertificateIssuanceConfig {
  /// A required mapping of a cloud region to the CA pool resource located in that region used
  /// for certificate issuance, adhering to these constraints:
  /// * **Key format:** A supported cloud region name equivalent to the location identifier in
  /// the corresponding map entry's value.
  /// * **Value format:** A valid CA pool resource path format like:
  /// `projects/{project}/locations/{location}/caPools/{ca_pool}`
  /// * **Region Matching:** Workloads are ONLY issued certificates from CA pools within the
  /// same region. Also the CA pool region (in value) must match the workload's region (key).
  final Map<String, String> caPools;

  /// Key algorithm to use when generating the key pair. This key pair will be used to create
  /// the certificate. If unspecified, this will default to `ECDSA_P256`.
  /// * `RSA_2048`: Specifies RSA with a 2048-bit modulus.
  /// * `RSA_3072`: Specifies RSA with a 3072-bit modulus.
  /// * `RSA_4096`: Specifies RSA with a 4096-bit modulus.
  /// * `ECDSA_P256`: Specifies ECDSA with curve P256.
  /// * `ECDSA_P384`: Specifies ECDSA with curve P384.
  /// Possible values are: `RSA_2048`, `RSA_3072`, `RSA_4096`, `ECDSA_P256`, `ECDSA_P384`.
  final String? keyAlgorithm;

  /// Lifetime of the workload certificates issued by the CA pool in seconds. Must be between
  /// <span pulumi-lang-nodejs="`86400s`" pulumi-lang-dotnet="`86400s`" pulumi-lang-go="`86400s`" pulumi-lang-python="`86400s`" pulumi-lang-yaml="`86400s`" pulumi-lang-java="`86400s`">`86400s`</span> (24 hours) to <span pulumi-lang-nodejs="`2592000s`" pulumi-lang-dotnet="`2592000s`" pulumi-lang-go="`2592000s`" pulumi-lang-python="`2592000s`" pulumi-lang-yaml="`2592000s`" pulumi-lang-java="`2592000s`">`2592000s`</span> (30 days), ends in the suffix "<span pulumi-lang-nodejs="`s`" pulumi-lang-dotnet="`S`" pulumi-lang-go="`s`" pulumi-lang-python="`s`" pulumi-lang-yaml="`s`" pulumi-lang-java="`s`">`s`</span>" (indicating seconds)
  /// and is preceded by the number of seconds. If unspecified, this will be defaulted to
  /// <span pulumi-lang-nodejs="`86400s`" pulumi-lang-dotnet="`86400s`" pulumi-lang-go="`86400s`" pulumi-lang-python="`86400s`" pulumi-lang-yaml="`86400s`" pulumi-lang-java="`86400s`">`86400s`</span> (24 hours).
  final String? lifetime;

  /// Rotation window percentage indicating when certificate rotation should be initiated based
  /// on remaining lifetime. Must be between <span pulumi-lang-nodejs="`50`" pulumi-lang-dotnet="`50`" pulumi-lang-go="`50`" pulumi-lang-python="`50`" pulumi-lang-yaml="`50`" pulumi-lang-java="`50`">`50`</span> - <span pulumi-lang-nodejs="`80`" pulumi-lang-dotnet="`80`" pulumi-lang-go="`80`" pulumi-lang-python="`80`" pulumi-lang-yaml="`80`" pulumi-lang-java="`80`">`80`</span>. If unspecified, this will be defaulted
  /// to <span pulumi-lang-nodejs="`50`" pulumi-lang-dotnet="`50`" pulumi-lang-go="`50`" pulumi-lang-python="`50`" pulumi-lang-yaml="`50`" pulumi-lang-java="`50`">`50`</span>.
  final int? rotationWindowPercentage;

  WorkloadIdentityPoolInlineCertificateIssuanceConfig({
    required this.caPools,
    this.keyAlgorithm,
    this.lifetime,
    this.rotationWindowPercentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caPools'] = caPools;
    final keyAlgorithmValue = keyAlgorithm;
    if (keyAlgorithmValue != null) {
      map['keyAlgorithm'] = keyAlgorithmValue;
    }
    final lifetimeValue = lifetime;
    if (lifetimeValue != null) {
      map['lifetime'] = lifetimeValue;
    }
    final rotationWindowPercentageValue = rotationWindowPercentage;
    if (rotationWindowPercentageValue != null) {
      map['rotationWindowPercentage'] = rotationWindowPercentageValue;
    }
    return map;
  }

  factory WorkloadIdentityPoolInlineCertificateIssuanceConfig.fromMap(
      Map<String, dynamic> map) {
    return WorkloadIdentityPoolInlineCertificateIssuanceConfig(
      caPools: (map['caPools'] as Map).cast<String, String>(),
      keyAlgorithm:
          map['keyAlgorithm'] == null ? null : map['keyAlgorithm'] as String,
      lifetime: map['lifetime'] == null ? null : map['lifetime'] as String,
      rotationWindowPercentage: map['rotationWindowPercentage'] == null
          ? null
          : map['rotationWindowPercentage'] as int,
    );
  }
}
