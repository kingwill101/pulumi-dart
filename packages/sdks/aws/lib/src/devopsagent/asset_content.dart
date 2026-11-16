// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_content_file.dart';
import 'asset_content_source_url.dart';
import 'asset_content_zip.dart';

class AssetContent {
  /// Single file to add or replace. See `file` Block below.
  final pulumi.Input<AssetContentFile?>? file;
  /// Source URL to import. See `sourceUrl` Block below.
  final pulumi.Input<AssetContentSourceUrl?>? sourceUrl;
  /// ZIP archive containing asset files. See `zip` Block below.
  final pulumi.Input<AssetContentZip?>? zip;

  /// Creates a new [AssetContent].
  /// [file] Single file to add or replace. See `file` Block below.
  /// [sourceUrl] Source URL to import. See `sourceUrl` Block below.
  /// [zip] ZIP archive containing asset files. See `zip` Block below.
  const AssetContent({
    this.file,
    this.sourceUrl,
    this.zip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': ?pulumi.Input.mapOptionalInputValue<AssetContentFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'sourceUrl': ?pulumi.Input.mapOptionalInputValue<AssetContentSourceUrl, Map<String, dynamic>>(sourceUrl, (value) => value.toMap()),
      'zip': ?pulumi.Input.mapOptionalInputValue<AssetContentZip, Map<String, dynamic>>(zip, (value) => value.toMap()),
    };
  }

  factory AssetContent.fromMap(Map<String, dynamic> map) {
    return AssetContent(
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssetContentFile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceUrl: (() { final guardedValue = map['sourceUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssetContentSourceUrl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zip: (() { final guardedValue = map['zip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssetContentZip.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
