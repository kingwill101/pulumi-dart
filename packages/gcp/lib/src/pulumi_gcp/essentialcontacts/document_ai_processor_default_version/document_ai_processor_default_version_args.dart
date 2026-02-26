// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DocumentAiProcessorDefaultVersion.
class DocumentAiProcessorDefaultVersionArgs {
  /// The processor to set the version on.
  final Input<String> processor;

  /// The version to set. Using <span pulumi-lang-nodejs="`stable`" pulumi-lang-dotnet="`Stable`" pulumi-lang-go="`stable`" pulumi-lang-python="`stable`" pulumi-lang-yaml="`stable`" pulumi-lang-java="`stable`">`stable`</span> or <span pulumi-lang-nodejs="`rc`" pulumi-lang-dotnet="`Rc`" pulumi-lang-go="`rc`" pulumi-lang-python="`rc`" pulumi-lang-yaml="`rc`" pulumi-lang-java="`rc`">`rc`</span> will cause the API to return the latest version in that release channel.
  /// Apply `lifecycle.ignore_changes` to the <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span> field to suppress this diff.
  final Input<String> version;

  DocumentAiProcessorDefaultVersionArgs({
    required this.processor,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['processor'] = processor;
    map['version'] = version;
    return map;
  }

  factory DocumentAiProcessorDefaultVersionArgs.fromMap(
      Map<String, dynamic> map) {
    return DocumentAiProcessorDefaultVersionArgs(
      processor: Input.asInput<String>(map['processor']),
      version: Input.asInput<String>(map['version']),
    );
  }
}
