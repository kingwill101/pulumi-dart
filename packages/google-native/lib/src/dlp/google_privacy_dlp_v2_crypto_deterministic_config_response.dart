// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_crypto_key_response.dart';
import 'google_privacy_dlp_v2_field_id_response.dart';
import 'google_privacy_dlp_v2_info_type_response.dart';

/// Pseudonymization method that generates deterministic encryption for the given input. Outputs a base64 encoded representation of the encrypted output. Uses AES-SIV based on the RFC https://tools.ietf.org/html/rfc5297.
class GooglePrivacyDlpV2CryptoDeterministicConfigResponse {
  /// A context may be used for higher security and maintaining referential integrity such that the same identifier in two different contexts will be given a distinct surrogate. The context is appended to plaintext value being encrypted. On decryption the provided context is validated against the value used during encryption. If a context was provided during encryption, same context must be provided during decryption as well. If the context is not set, plaintext would be used as is for encryption. If the context is set but: 1. there is no record present when transforming a given value or 2. the field is not present when transforming a given value, plaintext would be used as is for encryption. Note that case (1) is expected when an `InfoTypeTransformation` is applied to both structured and unstructured `ContentItem`s.
  final GooglePrivacyDlpV2FieldIdResponse context;

  /// The key used by the encryption function. For deterministic encryption using AES-SIV, the provided key is internally expanded to 64 bytes prior to use.
  final GooglePrivacyDlpV2CryptoKeyResponse cryptoKey;

  /// The custom info type to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom info type followed by the number of characters comprising the surrogate. The following scheme defines the format: {info type name}({surrogate character count}):{surrogate} For example, if the name of custom info type is 'MY_TOKEN_INFO_TYPE' and the surrogate is 'abc', the full replacement value will be: 'MY_TOKEN_INFO_TYPE(3):abc' This annotation identifies the surrogate when inspecting content using the custom info type 'Surrogate'. This facilitates reversal of the surrogate when it occurs in free text. Note: For record transformations where the entire cell in a table is being transformed, surrogates are not mandatory. Surrogates are used to denote the location of the token and are necessary for re-identification in free form text. In order for inspection to work properly, the name of this info type must not occur naturally anywhere in your data; otherwise, inspection may either - reverse a surrogate that does not correspond to an actual identifier - be unable to parse the surrogate and result in an error Therefore, choose your custom info type name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY_TOKEN_TYPE.
  final GooglePrivacyDlpV2InfoTypeResponse surrogateInfoType;

  /// Creates a new [GooglePrivacyDlpV2CryptoDeterministicConfigResponse].
  /// [context] A context may be used for higher security and maintaining referential integrity such that the same identifier in two different contexts will be given a distinct surrogate. The context is appended to plaintext value being encrypted. On decryption the provided context is validated against the value used during encryption. If a context was provided during encryption, same context must be provided during decryption as well. If the context is not set, plaintext would be used as is for encryption. If the context is set but: 1. there is no record present when transforming a given value or 2. the field is not present when transforming a given value, plaintext would be used as is for encryption. Note that case (1) is expected when an `InfoTypeTransformation` is applied to both structured and unstructured `ContentItem`s.
  /// [cryptoKey] The key used by the encryption function. For deterministic encryption using AES-SIV, the provided key is internally expanded to 64 bytes prior to use.
  /// [surrogateInfoType] The custom info type to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom info type followed by the number of characters comprising the surrogate. The following scheme defines the format: {info type name}({surrogate character count}):{surrogate} For example, if the name of custom info type is 'MY_TOKEN_INFO_TYPE' and the surrogate is 'abc', the full replacement value will be: 'MY_TOKEN_INFO_TYPE(3):abc' This annotation identifies the surrogate when inspecting content using the custom info type 'Surrogate'. This facilitates reversal of the surrogate when it occurs in free text. Note: For record transformations where the entire cell in a table is being transformed, surrogates are not mandatory. Surrogates are used to denote the location of the token and are necessary for re-identification in free form text. In order for inspection to work properly, the name of this info type must not occur naturally anywhere in your data; otherwise, inspection may either - reverse a surrogate that does not correspond to an actual identifier - be unable to parse the surrogate and result in an error Therefore, choose your custom info type name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY_TOKEN_TYPE.
  GooglePrivacyDlpV2CryptoDeterministicConfigResponse({
    required this.context,
    required this.cryptoKey,
    required this.surrogateInfoType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': context.toMap(),
      'cryptoKey': cryptoKey.toMap(),
      'surrogateInfoType': surrogateInfoType.toMap(),
    };
  }

  factory GooglePrivacyDlpV2CryptoDeterministicConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2CryptoDeterministicConfigResponse(
      context: GooglePrivacyDlpV2FieldIdResponse.fromMap(
        (map['context'] as Map).cast<String, dynamic>(),
      ),
      cryptoKey: GooglePrivacyDlpV2CryptoKeyResponse.fromMap(
        (map['cryptoKey'] as Map).cast<String, dynamic>(),
      ),
      surrogateInfoType: GooglePrivacyDlpV2InfoTypeResponse.fromMap(
        (map['surrogateInfoType'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
