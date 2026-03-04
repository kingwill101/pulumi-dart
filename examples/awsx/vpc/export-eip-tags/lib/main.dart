import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class VpcNodejsExportEipTagsStack extends pulumi.Stack {
  late final pulumi.Output<Map<String, dynamic>?> eipTags;

  VpcNodejsExportEipTagsStack() {
    final config = pulumi.Config();
    final additionalTag = config.get('vpcAdditionalTag') ?? '';

    final myVpc = awsx.ec2.Vpc(
      'awsx-dart-export-eip-tags',
      args: awsx.ec2.VpcArgs(tags: {'additionalTag': additionalTag}.input()),
    );

    eipTags = myVpc.eips.apply<Map<String, dynamic>?>((eips) {
      if (eips == null || eips.isEmpty) {
        return null;
      }
      final tags = eips.first['tags'];
      if (tags is Map<String, dynamic>) {
        return tags;
      }
      if (tags is Map) {
        return tags.map((key, value) => MapEntry(key.toString(), value));
      }
      return null;
    });
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('eipTags', eipTags)];
  }
}
