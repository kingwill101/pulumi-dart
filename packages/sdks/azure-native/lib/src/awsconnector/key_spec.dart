/// Specifies the type of KMS key to create. The default value, ``SYMMETRIC_DEFAULT``, creates a KMS key with a 256-bit symmetric key for encryption and decryption. In China Regions, ``SYMMETRIC_DEFAULT`` creates a 128-bit symmetric key that uses SM4 encryption. You can't change the ``KeySpec`` value after the KMS key is created. For help choosing a key spec for your KMS key, see [Choosing a KMS key type](https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-choose.html) in the *Developer Guide*. The ``KeySpec`` property determines the type of key material in the KMS key and the algorithms that the KMS key supports. To further restrict the algorithms that can be used with the KMS key, use a condition key in its key policy or IAM policy. For more information, see [condition keys](https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms) in the *Developer Guide*.  If you change the value of the ``KeySpec`` property on an existing KMS key, the update request fails, regardless of the value of the [UpdateReplacePolicy attribute](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatereplacepolicy.html). This prevents you from accidentally deleting a KMS key by changing an immutable property value.    [Services that are integrated with](https://aws.amazon.com/kms/features/#AWS_Service_Integration) use symmetric encryption KMS keys to protect your data. These services do not support encryption with asymmetric KMS keys. For help determining whether a KMS key is asymmetric, see [Identifying asymmetric KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/find-symm-asymm.html) in the *Developer Guide*.   KMS supports the following key specs for KMS keys:  +  Symmetric encryption key (default)  +   ``SYMMETRIC_DEFAULT`` (AES-256-GCM)    +  HMAC keys (symmetric)  +   ``HMAC_224``   +   ``HMAC_256``   +   ``HMAC_384``   +   ``HMAC_512``     +  Asymmetric RSA key pairs  +   ``RSA_2048``   +   ``RSA_3072``   +   ``RSA_4096``     +  Asymmetric NIST-recommended elliptic curve key pairs  +   ``ECC_NIST_P256`` (secp256r1)  +   ``ECC_NIST_P384`` (secp384r1)  +   ``ECC_NIST_P521`` (secp521r1)    +  Other asymmetric elliptic curve key pairs  +   ``ECC_SECG_P256K1`` (secp256k1), commonly used for cryptocurrencies.    +  SM2 key pairs (China Regions only)  +   ``SM2``
enum KeySpec {
  eCCNISTP256("ECC_NIST_P256"),
  eCCNISTP384("ECC_NIST_P384"),
  eCCNISTP521("ECC_NIST_P521"),
  eCCSECGP256K1("ECC_SECG_P256K1"),
  hMAC224("HMAC_224"),
  hMAC256("HMAC_256"),
  hMAC384("HMAC_384"),
  hMAC512("HMAC_512"),
  rSA2048("RSA_2048"),
  rSA3072("RSA_3072"),
  rSA4096("RSA_4096"),
  sM2("SM2"),
  sYMMETRICDEFAULT("SYMMETRIC_DEFAULT");

  const KeySpec(this.wireValue);
  final String wireValue;

  static KeySpec fromValue(String value) {
    for (final item in KeySpec.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeySpec value: $value');
  }
}
