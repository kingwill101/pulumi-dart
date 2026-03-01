import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  PolicyPack(
    'stack_tags_policy_pack',
    PolicyPackArgs(
      policies: [
        StackValidationPolicy(
          name: 'stack-tags-policy-pack',
          description: 'Reads stack tag values during policy analysis.',
          enforcementLevel: EnforcementLevel.mandatory,
          validateStack: (args, reportViolation) {
            final tag = args.stackTags['value'];
            if (tag == null) {
              reportViolation("Stack tag 'value' is required");
              return;
            }

            reportViolation('stack-tag=$tag');
          },
        ),
      ],
    ),
  );
}
