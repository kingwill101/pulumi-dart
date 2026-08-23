/// Determines the [cryptographic operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations) for which you can use the KMS key. The default value is ``ENCRYPT_DECRYPT``. This property is required for asymmetric KMS keys and HMAC KMS keys. You can't change the ``KeyUsage`` value after the KMS key is created.  If you change the value of the ``KeyUsage`` property on an existing KMS key, the update request fails, regardless of the value of the [UpdateReplacePolicy attribute](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatereplacepolicy.html). This prevents you from accidentally deleting a KMS key by changing an immutable property value.  Select only one valid value.  +  For symmetric encryption KMS keys, omit the property or specify ``ENCRYPT_DECRYPT``.  +  For asymmetric KMS keys with RSA key material, specify ``ENCRYPT_DECRYPT`` or ``SIGN_VERIFY``.  +  For asymmetric KMS keys with ECC key material, specify ``SIGN_VERIFY``.  +  For asymmetric KMS keys with SM2 (China Regions only) key material, specify ``ENCRYPT_DECRYPT`` or ``SIGN_VERIFY``.  +  For HMAC KMS keys, specify ``GENERATE_VERIFY_MAC``.
enum KeyUsage {
  eNCRYPTDECRYPT("ENCRYPT_DECRYPT"),
  gENERATEVERIFYMAC("GENERATE_VERIFY_MAC"),
  sIGNVERIFY("SIGN_VERIFY");

  const KeyUsage(this.wireValue);
  final String wireValue;

  static KeyUsage fromValue(String value) {
    for (final item in KeyUsage.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyUsage value: $value');
  }
}
