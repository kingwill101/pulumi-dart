package main

import (
	"fmt"
	"strings"

	"github.com/aws/aws-lambda-go/lambda"
)

// handler supports direct invoke payloads and Function URL payload envelopes.
func handler(event any) (string, error) {
	switch payload := event.(type) {
	case string:
		return strings.ToUpper(payload), nil
	case map[string]any:
		body, hasBody := payload["body"]
		if !hasBody || body == nil {
			return "", nil
		}

		bodyString, ok := body.(string)
		if !ok {
			return "", fmt.Errorf("unexpected body type %T", body)
		}

		return strings.ToUpper(bodyString), nil
	default:
		return "", fmt.Errorf("unexpected payload type %T", event)
	}
}

func main() {
	lambda.Start(handler)
}
