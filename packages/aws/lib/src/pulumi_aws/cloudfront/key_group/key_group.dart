import 'package:pulumi/pulumi.dart';
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
class KeyGroup extends CustomResource {
  /// A comment to describe the key group..
  late final Output<String?> comment;

  /// The identifier for this version of the key group.
  late final Output<String> etag;

  /// A list of the identifiers of the public keys in the key group.
  late final Output<List<String>> items;

  /// A name to identify the key group.
  late final Output<String> name;

  KeyGroup(
    String name, {
    KeyGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/keyGroup:KeyGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.comment = registerOutput<String?>('comment');
    this.etag = registerOutput<String>('etag');
    this.items = registerOutput<List<String>>('items');
    this.name = registerOutput<String>('name');
  }
}
