import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_group_args.dart';

/// ## Example Usage
///
/// The following example below creates a CloudFront key group.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Key Group using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/keyGroup:KeyGroup example 4b4f2r1c-315d-5c2e-f093-216t50jed10f
/// ```
class KeyGroup extends pulumi.CustomResource {
  /// A comment to describe the key group..
  late final pulumi.Output<String?> comment;

  /// The identifier for this version of the key group.
  late final pulumi.Output<String> etag;

  /// A list of the identifiers of the public keys in the key group.
  late final pulumi.Output<List<String>> items;

  /// A name to identify the key group.
  late final pulumi.Output<String> name;

  KeyGroup(
    String name, {
    KeyGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/keyGroup:KeyGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.comment = registerOutput<String?>('comment');
    this.etag = registerOutput<String>('etag');
    this.items = registerOutput<List<String>>('items');
    this.name = registerOutput<String>('name');
  }
}
