import 'package:pulumi/pulumi.dart';
import '../regex_pattern_set_regular_expression/regex_pattern_set_regular_expression.dart';
import 'regex_pattern_set_args3.dart';

/// Provides an AWS WAFv2 Regex Pattern Set Resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAFv2 Regex Pattern Sets using `ID/name/scope`. For example:
///
/// ```sh
/// $ pulumi import aws:wafv2/regexPatternSet:RegexPatternSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc/example/REGIONAL
/// ```
class RegexPatternSet3 extends CustomResource {
  /// The Amazon Resource Name (ARN) that identifies the cluster.
  late final Output<String> arn;

  /// A friendly description of the regular expression pattern set.
  late final Output<String?> description;
  late final Output<String> lockToken;

  /// A friendly name of the regular expression pattern set. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// One or more blocks of regular expression patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`. See Regular Expression below for details.
  late final Output<List<RegexPatternSetRegularExpression>?> regularExpressions;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  late final Output<String> scope;

  /// An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  RegexPatternSet3(
    String name, {
    RegexPatternSetArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/regexPatternSet:RegexPatternSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.lockToken = registerOutput<String>('lockToken');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.regularExpressions =
        registerOutput<List<RegexPatternSetRegularExpression>?>(
            'regularExpressions');
    this.scope = registerOutput<String>('scope');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
