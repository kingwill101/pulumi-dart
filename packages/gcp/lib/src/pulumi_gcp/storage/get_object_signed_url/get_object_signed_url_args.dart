// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getObjectSignedUrl.
class GetObjectSignedUrlArgs {
  /// The name of the bucket to read the object from
  final Input<String> bucket;

  /// The [MD5 digest](https://cloud.google.com/storage/docs/hashes-etags#_MD5) value in Base64.
  /// Typically retrieved from `google_storage_bucket_object.object.md5hash` attribute.
  /// If you provide this in the datasource, the client (e.g. browser, curl) must provide the `Content-MD5` HTTP header with this same value in its request.
  final Input<String>? contentMd5;

  /// If you specify this in the datasource, the client must provide the `Content-Type` HTTP header with the same value in its request.
  final Input<String>? contentType;

  /// What Google service account credentials json should be used to sign the URL.
  /// This data source checks the following locations for credentials, in order of preference: data source `credentials` attribute, provider `credentials` attribute and finally the GOOGLE_APPLICATION_CREDENTIALS environment variable.
  ///
  /// > **NOTE** the default google credentials configured by `gcloud` sdk or the service account associated with a compute instance cannot be used, because these do not include the private key required to sign the URL. A valid `json` service account credentials key file must be used, as generated via Google cloud console.
  final Input<String>? credentials;

  /// For how long shall the signed URL be valid (defaults to 1 hour - i.e. `1h`).
  /// See [here](https://golang.org/pkg/time/#ParseDuration) for info on valid duration formats.
  final Input<String>? duration;

  /// As needed. The server checks to make sure that the client provides matching values in requests using the signed URL.
  /// Any header starting with `x-goog-` is accepted but see the [Google Docs](https://cloud.google.com/storage/docs/xml-api/reference-headers) for list of headers that are supported by Google.
  final Input<Map<String, String>>? extensionHeaders;

  /// What HTTP Method will the signed URL allow (defaults to `GET`)
  final Input<String>? httpMethod;

  /// The full path to the object inside the bucket
  final Input<String> path;

  GetObjectSignedUrlArgs({
    required this.bucket,
    this.contentMd5,
    this.contentType,
    this.credentials,
    this.duration,
    this.extensionHeaders,
    this.httpMethod,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final contentMd5Value = contentMd5;
    if (contentMd5Value != null) {
      map['contentMd5'] = contentMd5Value;
    }
    final contentTypeValue = contentType;
    if (contentTypeValue != null) {
      map['contentType'] = contentTypeValue;
    }
    final credentialsValue = credentials;
    if (credentialsValue != null) {
      map['credentials'] = credentialsValue;
    }
    final durationValue = duration;
    if (durationValue != null) {
      map['duration'] = durationValue;
    }
    final extensionHeadersValue = extensionHeaders;
    if (extensionHeadersValue != null) {
      map['extensionHeaders'] = extensionHeadersValue;
    }
    final httpMethodValue = httpMethod;
    if (httpMethodValue != null) {
      map['httpMethod'] = httpMethodValue;
    }
    map['path'] = path;
    return map;
  }

  factory GetObjectSignedUrlArgs.fromMap(Map<String, dynamic> map) {
    return GetObjectSignedUrlArgs(
      bucket: Input.asInput<String>(map['bucket']),
      contentMd5: Input.asOptionalInput<String>(map['contentMd5']),
      contentType: Input.asOptionalInput<String>(map['contentType']),
      credentials: Input.asOptionalInput<String>(map['credentials']),
      duration: Input.asOptionalInput<String>(map['duration']),
      extensionHeaders:
          Input.asOptionalInput<Map<String, String>>(map['extensionHeaders']),
      httpMethod: Input.asOptionalInput<String>(map['httpMethod']),
      path: Input.asInput<String>(map['path']),
    );
  }
}
