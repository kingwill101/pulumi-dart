/// Required. Algorithm to use when creating a CryptoKeyVersion based on this template. For backwards compatibility, GOOGLE_SYMMETRIC_ENCRYPTION is implied if both this field is omitted and CryptoKey.purpose is ENCRYPT_DECRYPT.
enum CryptoKeyVersionTemplateAlgorithm {
  cryptoKeyVersionAlgorithmUnspecified("CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED"),
  googleSymmetricEncryption("GOOGLE_SYMMETRIC_ENCRYPTION"),
  aes128Gcm("AES_128_GCM"),
  aes256Gcm("AES_256_GCM"),
  aes128Cbc("AES_128_CBC"),
  aes256Cbc("AES_256_CBC"),
  aes128Ctr("AES_128_CTR"),
  aes256Ctr("AES_256_CTR"),
  rsaSignPss2048Sha256("RSA_SIGN_PSS_2048_SHA256"),
  rsaSignPss3072Sha256("RSA_SIGN_PSS_3072_SHA256"),
  rsaSignPss4096Sha256("RSA_SIGN_PSS_4096_SHA256"),
  rsaSignPss4096Sha512("RSA_SIGN_PSS_4096_SHA512"),
  rsaSignPkcs12048Sha256("RSA_SIGN_PKCS1_2048_SHA256"),
  rsaSignPkcs13072Sha256("RSA_SIGN_PKCS1_3072_SHA256"),
  rsaSignPkcs14096Sha256("RSA_SIGN_PKCS1_4096_SHA256"),
  rsaSignPkcs14096Sha512("RSA_SIGN_PKCS1_4096_SHA512"),
  rsaSignRawPkcs12048("RSA_SIGN_RAW_PKCS1_2048"),
  rsaSignRawPkcs13072("RSA_SIGN_RAW_PKCS1_3072"),
  rsaSignRawPkcs14096("RSA_SIGN_RAW_PKCS1_4096"),
  rsaDecryptOaep2048Sha256("RSA_DECRYPT_OAEP_2048_SHA256"),
  rsaDecryptOaep3072Sha256("RSA_DECRYPT_OAEP_3072_SHA256"),
  rsaDecryptOaep4096Sha256("RSA_DECRYPT_OAEP_4096_SHA256"),
  rsaDecryptOaep4096Sha512("RSA_DECRYPT_OAEP_4096_SHA512"),
  rsaDecryptOaep2048Sha1("RSA_DECRYPT_OAEP_2048_SHA1"),
  rsaDecryptOaep3072Sha1("RSA_DECRYPT_OAEP_3072_SHA1"),
  rsaDecryptOaep4096Sha1("RSA_DECRYPT_OAEP_4096_SHA1"),
  ecSignP256Sha256("EC_SIGN_P256_SHA256"),
  ecSignP384Sha384("EC_SIGN_P384_SHA384"),
  ecSignSecp256k1Sha256("EC_SIGN_SECP256K1_SHA256"),
  hmacSha256("HMAC_SHA256"),
  hmacSha1("HMAC_SHA1"),
  hmacSha384("HMAC_SHA384"),
  hmacSha512("HMAC_SHA512"),
  hmacSha224("HMAC_SHA224"),
  externalSymmetricEncryption("EXTERNAL_SYMMETRIC_ENCRYPTION");

  const CryptoKeyVersionTemplateAlgorithm(this.value);
  final String value;

  static CryptoKeyVersionTemplateAlgorithm fromValue(String value) {
    for (final item in CryptoKeyVersionTemplateAlgorithm.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CryptoKeyVersionTemplateAlgorithm value: $value');
  }
}

